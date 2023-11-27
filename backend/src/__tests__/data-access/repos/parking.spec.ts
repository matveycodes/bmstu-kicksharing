import { NotFoundError } from "../../../errors/not-found";
import { ParkingPostgresRepo } from "../../../repos/postgres/parking/repo";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { ParkingBuilder } from "../../builders/parking";

const pool = createPostgresPool();

const parkingRepo = new ParkingPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE parkings CASCADE");
});

describe("ParkingPostgresRepo", () => {
  describe("Получение парковки по ID (getById)", () => {
    it("Бросается исключение, если парковка с указанным ID не найдена", async () => {
      // Act
      const getPromise = parkingRepo.getById(parkingRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается парковка", async () => {
      // Arrange
      const parking = new ParkingBuilder().build();
      await parkingRepo.save(parking);

      // Act
      const getPromise = parkingRepo.getById(parking.id);

      // Assert
      await expect(getPromise).resolves.toEqual(parking);
    });
  });

  describe("Получение парковки в границах (getWithinBoundsPaginated)", () => {
    it("Возвращается пустой массив, если в границах нет парковок", async () => {
      // Act
      const getPromise = parkingRepo.getWithinBoundsPaginated(
        {
          maxLongitude: 180,
          minLongitude: -180,
          maxLatitude: 90,
          minLatitude: -90,
        },
        { page: 1, pageSize: 1 }
      );

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: 0,
        nextPage: null,
        previousPage: null,
        results: [],
      });
    });

    it("Возвращается массив парковок в границах", async () => {
      // Arrange
      const parkingWithin = new ParkingBuilder()
        .withLocation({ latitude: 50, longitude: 50 })
        .build();
      await parkingRepo.save(parkingWithin);

      const parkingOutside = new ParkingBuilder()
        .withLocation({ latitude: 42, longitude: 42 })
        .build();
      await parkingRepo.save(parkingOutside);

      // Act
      const getPromise = parkingRepo.getWithinBoundsPaginated(
        {
          maxLongitude: 51,
          minLatitude: 49,
          maxLatitude: 51,
          minLongitude: 49,
        },
        { page: 1, pageSize: 1 }
      );

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: 1,
        nextPage: null,
        previousPage: null,
        results: [parkingWithin],
      });
    });
  });
});

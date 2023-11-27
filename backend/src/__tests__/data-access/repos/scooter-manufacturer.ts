import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { ScooterManufacturerPostgresRepo } from "../../../repos/postgres/scooter-manufacturer/repo";
import { ScooterManufacturerBuilder } from "../../builders/scooter-manufacturer";

const pool = createPostgresPool();

const scooterManufacturerRepo = new ScooterManufacturerPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE scooter_manufacturers CASCADE");
});

describe("ScooterManufacturerPostgresRepo", () => {
  describe("Получение производителя самокатов по ID (getById)", () => {
    it("Бросается исключение, если производитель самокатов с указанным ID не найден", async () => {
      // Act
      const getPromise = scooterManufacturerRepo.getById(
        scooterManufacturerRepo.nextId()
      );

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается производитель самокатов", async () => {
      // Arrange
      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      // Act
      const getPromise = scooterManufacturerRepo.getById(
        scooterManufacturer.id
      );

      // Assert
      await expect(getPromise).resolves.toEqual(scooterManufacturer);
    });
  });
});

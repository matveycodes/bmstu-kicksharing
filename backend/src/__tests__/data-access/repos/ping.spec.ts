import { PingPostgresRepo } from "../../../repos/postgres/ping/repo";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { ScooterPostgresRepo } from "../../../repos/postgres/scooter/repo";
import { ScooterManufacturerPostgresRepo } from "../../../repos/postgres/scooter-manufacturer/repo";
import { ScooterModelPostgresRepo } from "../../../repos/postgres/scooter-model/repo";
import { ScooterManufacturerBuilder } from "../../builders/scooter-manufacturer";
import { ScooterModelBuilder } from "../../builders/scooter-model";
import { PingMother } from "../../mothers/ping";
import { ScooterMother } from "../../mothers/scooter";

const pool = createPostgresPool();

const pingRepo = new PingPostgresRepo(pool);
const scooterManufacturerRepo = new ScooterManufacturerPostgresRepo(pool);
const scooterModelRepo = new ScooterModelPostgresRepo(pool);
const scooterRepo = new ScooterPostgresRepo(pool);

afterEach(async () => {
  await pool.query(
    "TRUNCATE pings, scooter_manufacturers, scooter_models, scooters CASCADE"
  );
});

describe("PingPostgresRepo", () => {
  describe("Получение доступных записей в границах (getRentableWithinBoundsPaginated)", () => {
    it("Возвращается пустой массив, если в границах нет доступных записей", async () => {
      // Act
      const getPromise = pingRepo.getRentableWithinBoundsPaginated(
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

    it("Возвращается массив доступных записей в границах", async () => {
      // Arrange
      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = ScooterMother.anEnabledScooter()
        .withModelId(scooterModel.id)
        .build();
      await scooterRepo.save(scooter);

      const pingWithin = PingMother.aChargedPing()
        .withLocation({ latitude: 50, longitude: 50 })
        .withScooterId(scooter.id)
        .build();
      await pingRepo.save(pingWithin);

      const pingOutside = PingMother.aChargedPing()
        .withLocation({ latitude: 42, longitude: 42 })
        .withScooterId(scooter.id)
        .build();
      await pingRepo.save(pingOutside);

      // Act
      const getPromise = pingRepo.getRentableWithinBoundsPaginated(
        {
          maxLongitude: 51,
          minLongitude: 49,
          maxLatitude: 51,
          minLatitude: 49,
        },
        { page: 1, pageSize: 1 }
      );

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: 1,
        nextPage: null,
        previousPage: null,
        results: [pingWithin],
      });
    });
  });

  describe("Получение последней записи самоката (getLatestByScooterId)", () => {
    it("Возвращается null, если для самоката нет записей", async () => {
      // Act
      const getPromise = pingRepo.getLatestByScooterId(scooterRepo.nextId());

      // Assert
      await expect(getPromise).resolves.toBeNull();
    });

    it("Возвращается последняя запись для самоката", async () => {
      // Arrange
      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = ScooterMother.anEnabledScooter()
        .withModelId(scooterModel.id)
        .build();
      await scooterRepo.save(scooter);

      const ping = PingMother.aChargedPing().withScooterId(scooter.id).build();
      await pingRepo.save(ping);

      // Act
      const getPromise = pingRepo.getLatestByScooterId(scooter.id);

      // Assert
      await expect(getPromise).resolves.toEqual(ping);
    });
  });
});

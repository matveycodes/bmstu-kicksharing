import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { RidePostgresRepo } from "../../../repos/postgres/ride/repo";
import { ScooterPostgresRepo } from "../../../repos/postgres/scooter/repo";
import { ScooterManufacturerPostgresRepo } from "../../../repos/postgres/scooter-manufacturer/repo";
import { ScooterModelPostgresRepo } from "../../../repos/postgres/scooter-model/repo";
import { UserPostgresRepo } from "../../../repos/postgres/user/repo";
import { RideBuilder } from "../../builders/ride";
import { ScooterBuilder } from "../../builders/scooter";
import { ScooterManufacturerBuilder } from "../../builders/scooter-manufacturer";
import { ScooterModelBuilder } from "../../builders/scooter-model";
import { RideMother } from "../../mothers/ride";
import { UserMother } from "../../mothers/user";

const pool = createPostgresPool();

const rideRepo = new RidePostgresRepo(pool);
const userRepo = new UserPostgresRepo(pool);
const scooterRepo = new ScooterPostgresRepo(pool);
const scooterModelRepo = new ScooterModelPostgresRepo(pool);
const scooterManufacturerRepo = new ScooterManufacturerPostgresRepo(pool);

afterEach(async () => {
  await pool.query(
    "TRUNCATE rides, users, scooters, scooter_models, scooter_manufacturers CASCADE"
  );
});

describe("RidePostgresRepo", () => {
  describe("Сохранение поездки (save)", () => {
    it("Успешно сохраняется поездка", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = new ScooterBuilder().withModelId(scooterModel.id).build();
      await scooterRepo.save(scooter);

      const ride = new RideBuilder()
        .withScooterId(scooter.id)
        .withUserId(user.id)
        .build();

      // Act
      const savePromise = rideRepo.save(ride);

      // Assert
      await expect(savePromise).resolves.not.toThrow();
    });
  });

  describe("Получение поездки по ID (getById)", () => {
    it("Бросается исключение, если поездка с указанным ID не найдена", async () => {
      // Act
      const getPromise = rideRepo.getById(rideRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается поездка", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = new ScooterBuilder().withModelId(scooterModel.id).build();
      await scooterRepo.save(scooter);

      const ride = new RideBuilder()
        .withScooterId(scooter.id)
        .withUserId(user.id)
        .build();
      await rideRepo.save(ride);

      // Act
      const getPromise = rideRepo.getById(ride.id);

      // Assert
      await expect(getPromise).resolves.toEqual(ride);
    });
  });

  describe("Получение активных поездок по ID пользователя (getActiveByUserId)", () => {
    it("Возвращается пустой массив, если у пользователя нет активных поездок", async () => {
      // Act
      const getPromise = rideRepo.getActiveByUserId(userRepo.nextId());

      // Assert
      await expect(getPromise).resolves.toEqual([]);
    });

    it("Возвращаются активные поездки", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = new ScooterBuilder().withModelId(scooterModel.id).build();
      await scooterRepo.save(scooter);

      const ride = RideMother.anActiveRide()
        .withScooterId(scooter.id)
        .withUserId(user.id)
        .build();
      await rideRepo.save(ride);

      // Act
      const getPromise = rideRepo.getActiveByUserId(user.id);

      // Assert
      await expect(getPromise).resolves.toEqual([ride]);
    });
  });

  describe("Проверка аренды самоката (isScooterTaken)", () => {
    it("Возвращается false, если самокат не арендован", async () => {
      // Act
      const getPromise = rideRepo.isScooterTaken(scooterRepo.nextId());

      // Assert
      await expect(getPromise).resolves.toBe(false);
    });

    it("Возвращается true, если самокат арендован", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = new ScooterBuilder().withModelId(scooterModel.id).build();
      await scooterRepo.save(scooter);

      const ride = RideMother.anActiveRide()
        .withScooterId(scooter.id)
        .withUserId(user.id)
        .build();
      await rideRepo.save(ride);

      // Act
      const getPromise = rideRepo.isScooterTaken(scooter.id);

      // Assert
      await expect(getPromise).resolves.toBe(true);
    });
  });
});

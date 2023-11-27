import { NotFoundError } from "../../../errors/not-found";
import { BookingPostgresRepo } from "../../../repos/postgres/booking/repo";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { ScooterPostgresRepo } from "../../../repos/postgres/scooter/repo";
import { ScooterManufacturerPostgresRepo } from "../../../repos/postgres/scooter-manufacturer/repo";
import { ScooterModelPostgresRepo } from "../../../repos/postgres/scooter-model/repo";
import { UserPostgresRepo } from "../../../repos/postgres/user/repo";
import { ScooterManufacturerBuilder } from "../../builders/scooter-manufacturer";
import { ScooterModelBuilder } from "../../builders/scooter-model";
import { BookingMother } from "../../mothers/booking";
import { ScooterMother } from "../../mothers/scooter";
import { UserMother } from "../../mothers/user";

const pool = createPostgresPool();

const bookingRepo = new BookingPostgresRepo(pool);
const userRepo = new UserPostgresRepo(pool);
const scooterRepo = new ScooterPostgresRepo(pool);
const scooterManufacturerRepo = new ScooterManufacturerPostgresRepo(pool);
const scooterModelRepo = new ScooterModelPostgresRepo(pool);

afterEach(async () => {
  await pool.query(
    "TRUNCATE bookings, users, scooters, scooter_models, scooter_manufacturers CASCADE"
  );
});

describe("BookingPostgresRepo", () => {
  describe("Получение бронирования по ID (getById)", () => {
    it("Бросается исключение, если бронирование с указанным ID не найдено", async () => {
      // Act
      const getPromise = bookingRepo.getById(bookingRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно получает бронирование по ID", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

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

      const booking = BookingMother.anActiveBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(booking);

      // Act
      const getPromise = bookingRepo.getById(booking.id);

      // Assert
      await expect(getPromise).resolves.toEqual(booking);
    });
  });

  describe("Сохранение бронирования (save)", () => {
    it("Успешно сохраняется бронирование", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

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

      const booking = BookingMother.anActiveBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();

      // Act
      const savePromise = bookingRepo.save(booking);

      // Assert
      await expect(savePromise).resolves.not.toThrow();

      const fetchedBooking = await bookingRepo.getById(booking.id);
      expect(fetchedBooking).toEqual(booking);
    });
  });

  describe("Проверка брони самоката (isScooterTaken)", () => {
    it("Возвращается false, если самокат не забронирован", async () => {
      // Act
      const checkPromise = bookingRepo.isScooterTaken(scooterRepo.nextId());

      // Assert
      await expect(checkPromise).resolves.toBe(false);
    });

    it("Возвращается true, если самокат забронирован", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

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

      const booking = BookingMother.anActiveBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(booking);

      // Act
      const checkPromise = bookingRepo.isScooterTaken(scooter.id);

      // Assert
      await expect(checkPromise).resolves.toBe(true);
    });
  });

  describe("Получение активных бронирований по ID пользователя (getActiveByUserId)", () => {
    it("Возвращается пустой массив, если у пользователя нет активных бронирований", async () => {
      // Act
      const getPromise = bookingRepo.getActiveByUserId(userRepo.nextId());

      // Assert
      await expect(getPromise).resolves.toEqual([]);
    });

    it("Возвращаются все активные бронирования пользователя", async () => {
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

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

      const finishedBooking = BookingMother.aFinishedBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(finishedBooking);

      const activeBooking = BookingMother.anActiveBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(activeBooking);

      // Act
      const getPromise = bookingRepo.getActiveByUserId(user.id);

      // Assert
      await expect(getPromise).resolves.toEqual([activeBooking]);
    });
  });

  describe("Получение активных бронирований по ID самоката (getActiveByScooterId)", () => {
    it("Возвращается пустой массив, если на самокат нет активных бронирований", async () => {
      // Act
      const getPromise = bookingRepo.getActiveByScooterId(scooterRepo.nextId());

      // Assert
      await expect(getPromise).resolves.toEqual([]);
    });

    it("Возвращаются все активные бронирования самоката", async () => {
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

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

      const finishedBooking = BookingMother.aFinishedBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(finishedBooking);

      const activeBooking = BookingMother.anActiveBooking()
        .withUserId(user.id)
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(activeBooking);

      // Act
      const getPromise = bookingRepo.getActiveByScooterId(scooter.id);

      // Assert
      await expect(getPromise).resolves.toEqual([activeBooking]);
    });
  });
});

import range from "lodash/range";

import { BookingMockRepo } from "../../../__mocks__/repos/booking-repo";
import { PingMockRepo } from "../../../__mocks__/repos/ping-repo";
import { RideMockRepo } from "../../../__mocks__/repos/ride-repo";
import { ScooterMockRepo } from "../../../__mocks__/repos/scooter-repo";
import { SettingMockRepo } from "../../../__mocks__/repos/setting-repo";
import { UserMockRepo } from "../../../__mocks__/repos/user-repo";
import { BadStateError } from "../../../errors/bad-state";
import { LimitError } from "../../../errors/limit";
import { PermissionError } from "../../../errors/permission";
import { BookingService } from "../../../services/booking";
import { ScooterBuilder } from "../../builders/scooter";
import { BookingMother } from "../../mothers/booking";
import { PingMother } from "../../mothers/ping";
import { RideMother } from "../../mothers/ride";
import { ScooterMother } from "../../mothers/scooter";
import { SettingMother } from "../../mothers/setting";
import { UserMother } from "../../mothers/user";

const getMocks = () => {
  const userRepo = new UserMockRepo();
  const scooterRepo = new ScooterMockRepo();
  const bookingRepo = new BookingMockRepo();
  const rideRepo = new RideMockRepo();
  const settingRepo = new SettingMockRepo();
  const pingRepo = new PingMockRepo({ rideRepo, scooterRepo, bookingRepo });

  const bookingService = new BookingService({
    pingRepo,
    userRepo,
    scooterRepo,
    bookingRepo,
    rideRepo,
    settingRepo,
  });

  return {
    userRepo,
    scooterRepo,
    rideRepo,
    bookingRepo,
    bookingService,
    settingRepo,
    pingRepo,
  };
};

describe("BookingService", () => {
  describe("Создание бронирования (create)", () => {
    it("Бросается исключение, если пользователь неактивен", async () => {
      // Arrange
      const { userRepo, bookingService, scooterRepo } = getMocks();

      const user = UserMother.aBlockedCustomer().build();
      await userRepo.save(user);

      const scooter = new ScooterBuilder().build();
      await scooterRepo.save(scooter);

      // Act
      const bookPromise = bookingService.create(scooter.id, user.id);

      // Assert
      await expect(bookPromise).rejects.toThrow(PermissionError);
    });

    it("Бросается исключение, если превышен лимит бронирований", async () => {
      // Arrange
      const mocks = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await mocks.userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await mocks.scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentBookingsSetting().build();
      await mocks.settingRepo.save(setting);

      const bookings = range(+setting.value).map(() =>
        BookingMother.anActiveBooking().withUserId(user.id).build()
      );
      await Promise.all(bookings.map((b) => mocks.bookingRepo.save(b)));

      // Act
      const bookPromise = mocks.bookingService.create(scooter.id, user.id);

      // Assert
      await expect(bookPromise).rejects.toThrow(LimitError);
    });

    it("Бросается исключение, если самокат недоступен", async () => {
      // Arrange
      const { userRepo, bookingService, scooterRepo, settingRepo } = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.aDisabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentBookingsSetting().build();
      await settingRepo.save(setting);

      // Act
      const bookPromise = bookingService.create(scooter.id, user.id);

      // Assert
      await expect(bookPromise).rejects.toThrow(BadStateError);
    });

    it("Бросается исключение, если самокат арендован", async () => {
      // Arrange
      const { userRepo, bookingService, scooterRepo, settingRepo, rideRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentBookingsSetting().build();
      await settingRepo.save(setting);

      const ride = RideMother.anActiveRide()
        .withScooterId(scooter.id)
        .withUserId(user.id)
        .build();
      await rideRepo.save(ride);

      // Act
      const bookPromise = bookingService.create(scooter.id, user.id);

      // Assert
      await expect(bookPromise).rejects.toThrow(BadStateError);
    });

    it("Бросается исключение, если самокат уже забронирован", async () => {
      // Arrange
      const mocks = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await mocks.userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await mocks.scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentBookingsSetting().build();
      await mocks.settingRepo.save(setting);

      const booking = BookingMother.anActiveBooking()
        .withScooterId(scooter.id)
        .withUserId(user.id)
        .build();
      await mocks.bookingRepo.save(booking);

      // Act
      const bookPromise = mocks.bookingService.create(scooter.id, user.id);

      // Assert
      await expect(bookPromise).rejects.toThrow(BadStateError);
    });

    it("Бросается исключение, если самокат разряжен", async () => {
      // Arrange
      const { userRepo, bookingService, scooterRepo, settingRepo, pingRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentBookingsSetting().build();
      await settingRepo.save(setting);

      const ping = PingMother.aDischargedPing()
        .withScooterId(scooter.id)
        .build();
      await pingRepo.save(ping);

      // Act
      const bookPromise = bookingService.create(scooter.id, user.id);

      // Assert
      await expect(bookPromise).rejects.toThrow(BadStateError);
    });

    it("Успешно создается бронирование", async () => {
      // Arrange
      const mocks = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await mocks.userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await mocks.scooterRepo.save(scooter);

      const concurrentSetting =
        SettingMother.aMaxConcurrentBookingsSetting().build();
      await mocks.settingRepo.save(concurrentSetting);

      const durationSetting =
        SettingMother.aMaxBookingDurationSetting().build();
      await mocks.settingRepo.save(durationSetting);

      const ping = PingMother.aChargedPing().withScooterId(scooter.id).build();
      await mocks.pingRepo.save(ping);

      // Act
      await mocks.bookingService.create(scooter.id, user.id);

      // Assert
      const bookings = await mocks.bookingRepo.getActiveByUserId(user.id);
      expect(bookings).toHaveLength(1);

      expect(bookings[0]).toHaveProperty("userId", user.id);
      expect(bookings[0]).toHaveProperty("scooterId", scooter.id);
    });
  });

  describe("Завершение бронирования (cancel)", () => {
    it("Бросается исключение, если бронирование уже завершено", async () => {
      // Arrange
      const { bookingRepo, bookingService } = getMocks();

      const booking = BookingMother.aFinishedBooking().build();
      await bookingRepo.save(booking);

      // Act
      const cancelPromise = bookingService.cancel(booking.id);

      // Assert
      await expect(cancelPromise).rejects.toThrow(BadStateError);
    });

    it("Успешно завершается бронирование", async () => {
      // Arrange
      const { bookingRepo, bookingService } = getMocks();

      const booking = BookingMother.anActiveBooking().build();
      await bookingRepo.save(booking);

      // Act
      await bookingService.cancel(booking.id);

      // Assert
      const activeBookings = await bookingRepo.getActiveByUserId(
        booking.userId
      );
      expect(activeBookings).toHaveLength(0);

      const { results: finishedBookings } =
        await bookingRepo.getFinishedPaginated({ pageSize: 1, page: 1 });
      expect(finishedBookings).toHaveLength(1);
    });
  });
});

import range from "lodash/range";

import { BillingMockGateway } from "../../../__mocks__/gateways/billing";
import { BookingMockRepo } from "../../../__mocks__/repos/booking-repo";
import { PingMockRepo } from "../../../__mocks__/repos/ping-repo";
import { PurchaseMockRepo } from "../../../__mocks__/repos/purchase-repo";
import { RideMockRepo } from "../../../__mocks__/repos/ride-repo";
import { ScooterMockRepo } from "../../../__mocks__/repos/scooter-repo";
import { SettingMockRepo } from "../../../__mocks__/repos/setting-repo";
import { UserMockRepo } from "../../../__mocks__/repos/user-repo";
import { BadStateError } from "../../../errors/bad-state";
import { LimitError } from "../../../errors/limit";
import { PermissionError } from "../../../errors/permission";
import { RideService } from "../../../services/ride";
import { TariffService } from "../../../services/tariff";
import { BookingMother } from "../../mothers/booking";
import { PingMother } from "../../mothers/ping";
import { RideMother } from "../../mothers/ride";
import { ScooterMother } from "../../mothers/scooter";
import { SettingMother } from "../../mothers/setting";
import { UserMother } from "../../mothers/user";

const getMocks = () => {
  const bookingRepo = new BookingMockRepo();
  const scooterRepo = new ScooterMockRepo();
  const rideRepo = new RideMockRepo();
  const pingRepo = new PingMockRepo({ bookingRepo, scooterRepo, rideRepo });
  const settingRepo = new SettingMockRepo();
  const purchaseRepo = new PurchaseMockRepo();
  const userRepo = new UserMockRepo();

  const billingGateway = new BillingMockGateway();

  const tariffService = new TariffService({ settingRepo, purchaseRepo });
  const rideService = new RideService({
    tariffService,
    pingRepo,
    rideRepo,
    bookingRepo,
    userRepo,
    scooterRepo,
    settingRepo,
    billingGateway,
  });

  return {
    bookingRepo,
    scooterRepo,
    rideRepo,
    pingRepo,
    settingRepo,
    purchaseRepo,
    userRepo,
    billingGateway,
    tariffService,
    rideService,
  };
};

describe("RideService", () => {
  describe("Создание поездки", () => {
    it("Бросается исключение, если пользователь неактивен", async () => {
      // Arrange
      const { userRepo, rideService, scooterRepo } = getMocks();

      const user = UserMother.aBlockedCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      // Act
      const createPromise = rideService.create(scooter.id, user.id);

      // Assert
      await expect(createPromise).rejects.toThrow(PermissionError);
    });

    it("Бросается исключение, если превышен лимит активных поездок", async () => {
      // Arrange
      const { userRepo, rideService, scooterRepo, rideRepo, settingRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      const rides = range(3).map(() =>
        RideMother.anActiveRide().withUserId(user.id).build()
      );
      await Promise.all(rides.map((r) => rideRepo.save(r)));

      const setting = SettingMother.aMaxConcurrentRidesSetting().build();
      await settingRepo.save(setting);

      // Act
      const createPromise = rideService.create(scooter.id, user.id);

      // Assert
      await expect(createPromise).rejects.toThrow(LimitError);
    });

    it("Бросается исключение, если самокат недоступен", async () => {
      // Arrange
      const { userRepo, rideService, scooterRepo, settingRepo } = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.aDisabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentRidesSetting().build();
      await settingRepo.save(setting);

      // Act
      const createPromise = rideService.create(scooter.id, user.id);

      // Assert
      await expect(createPromise).rejects.toThrow(BadStateError);
    });

    it("Бросается исключение, если самокат забронирован", async () => {
      // Arrange
      const { userRepo, rideService, scooterRepo, settingRepo, bookingRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentRidesSetting().build();
      await settingRepo.save(setting);

      const booking = BookingMother.anActiveBooking()
        .withScooterId(scooter.id)
        .build();
      await bookingRepo.save(booking);

      // Act
      const createPromise = rideService.create(scooter.id, user.id);

      // Assert
      await expect(createPromise).rejects.toThrow(BadStateError);
    });

    it("Бросается исключение, если самокат уже арендован", async () => {
      // Arrange
      const { userRepo, rideService, scooterRepo, settingRepo, rideRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentRidesSetting().build();
      await settingRepo.save(setting);

      const ride = RideMother.anActiveRide().withScooterId(scooter.id).build();
      await rideRepo.save(ride);

      // Act
      const createPromise = rideService.create(scooter.id, user.id);

      // Assert
      await expect(createPromise).rejects.toThrow(BadStateError);
    });

    it("Бросается исключение, если самокат разряжен", async () => {
      // Arrange
      const { userRepo, rideService, scooterRepo, settingRepo, pingRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await scooterRepo.save(scooter);

      const setting = SettingMother.aMaxConcurrentRidesSetting().build();
      await settingRepo.save(setting);

      const ping = PingMother.aDischargedPing()
        .withScooterId(scooter.id)
        .build();
      await pingRepo.save(ping);

      // Act
      const createPromise = rideService.create(scooter.id, user.id);

      // Assert
      await expect(createPromise).rejects.toThrow(BadStateError);
    });

    it("Успешно начинается поездка", async () => {
      // Arrange
      const mocks = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await mocks.userRepo.save(user);

      const scooter = ScooterMother.anEnabledScooter().build();
      await mocks.scooterRepo.save(scooter);

      const concurrentSetting =
        SettingMother.aMaxConcurrentRidesSetting().build();
      await mocks.settingRepo.save(concurrentSetting);

      const startSetting = SettingMother.aStartPriceSetting().build();
      await mocks.settingRepo.save(startSetting);

      const perMinuteSetting = SettingMother.aPerMinutePriceSetting().build();
      await mocks.settingRepo.save(perMinuteSetting);

      const ping = PingMother.aChargedPing().withScooterId(scooter.id).build();
      await mocks.pingRepo.save(ping);

      // Act
      await mocks.rideService.create(scooter.id, user.id);

      // Assert
      const rides = await mocks.rideRepo.getActiveByScooterId(scooter.id);
      expect(rides).toHaveLength(1);
      expect(rides[0]).toHaveProperty("userId", user.id);
    });
  });

  describe("Завершение поездки", () => {
    it("Бросается исключение, если поездка уже завершена", async () => {
      // Arrange
      const { rideService, rideRepo } = getMocks();

      const ride = RideMother.aFinishedRide().build();
      await rideRepo.save(ride);

      // Act
      const finishPromise = rideService.finish(ride.id);

      // Assert
      await expect(finishPromise).rejects.toThrow(BadStateError);
    });

    it("Успешно завершается поездка", async () => {
      // Arrange
      const { rideService, rideRepo } = getMocks();

      const ride = RideMother.anActiveRide().build();
      await rideRepo.save(ride);

      // Act
      await rideService.finish(ride.id);

      // Assert
      const { results: rides } = await rideRepo.getFinishedPaginated({
        page: 1,
        pageSize: 1,
      });
      expect(rides).toHaveLength(1);
      expect(rides[0].dateFinished).toBeTruthy();
    });
  });
});

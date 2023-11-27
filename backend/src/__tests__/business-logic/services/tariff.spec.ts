import { PurchaseMockRepo } from "../../../__mocks__/repos/purchase-repo";
import { SettingMockRepo } from "../../../__mocks__/repos/setting-repo";
import { UserMockRepo } from "../../../__mocks__/repos/user-repo";
import { TariffService } from "../../../services/tariff";
import { PurchaseMother } from "../../mothers/purchase";
import { SettingMother } from "../../mothers/setting";
import { UserMother } from "../../mothers/user";

const getMocks = () => {
  const settingRepo = new SettingMockRepo();
  const purchaseRepo = new PurchaseMockRepo();
  const userRepo = new UserMockRepo();

  const tariffService = new TariffService({
    purchaseRepo,
    settingRepo,
  });

  return { settingRepo, purchaseRepo, tariffService, userRepo };
};

describe("TariffService", () => {
  describe("Получение тарифа (get)", () => {
    it("Полная цена для пользователя без подписки", async () => {
      // Arrange
      const { tariffService, userRepo, settingRepo } = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const startSetting = SettingMother.aStartPriceSetting().build();
      await settingRepo.save(startSetting);

      const perMinuteSetting = SettingMother.aPerMinutePriceSetting().build();
      await settingRepo.save(perMinuteSetting);

      // Act
      const tariff = await tariffService.get(user.id);

      // Assert
      expect(tariff).toEqual({
        startPrice: +startSetting.value,
        perMinutePrice: +perMinuteSetting.value,
      });
    });

    it("Бесплатный старт для пользователя с подпиской", async () => {
      // Arrange
      const { tariffService, userRepo, settingRepo, purchaseRepo } = getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const startSetting = SettingMother.aStartPriceSetting().build();
      await settingRepo.save(startSetting);

      const perMinuteSetting = SettingMother.aPerMinutePriceSetting().build();
      await settingRepo.save(perMinuteSetting);

      const purchase = PurchaseMother.anActivePurchase()
        .withUserId(user.id)
        .build();
      await purchaseRepo.save(purchase);

      // Act
      const tariff = await tariffService.get(user.id);

      // Assert
      expect(tariff).toEqual({
        startPrice: 0,
        perMinutePrice: +perMinuteSetting.value,
      });
    });
  });
});

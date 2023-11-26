import { SettingMockRepo } from "../../../__mocks__/repos/setting-repo";
import { UserMockRepo } from "../../../__mocks__/repos/user-repo";
import { ValidationError } from "../../../errors/validation";
import { UserService } from "../../../services/user";
import { SettingMother } from "../../mothers/setting";
import { UserMother } from "../../mothers/user";

const getMocks = () => {
  const settingRepo = new SettingMockRepo();
  const userRepo = new UserMockRepo();

  const userService = new UserService({
    settingRepo,
    userRepo,
  });

  return { settingRepo, userRepo, userService };
};

describe("UserService", () => {
  describe("Обновление информации", () => {
    it("Бросается исключение, если возраст меньше минимального", async () => {
      // Arrange
      jest.useFakeTimers({ now: new Date("2020-01-01") });
      const { userService, userRepo, settingRepo } = getMocks();

      const user = UserMother.aPendingCustomer().build();
      await userRepo.save(user);

      const setting = SettingMother.aMinUserAgeSetting().build();
      await settingRepo.save(setting);

      // Act
      const updatePromise = userService.update(user.id, {
        birthdate: new Date("2015-01-01"),
      });

      // Assert
      await expect(updatePromise).rejects.toThrow(ValidationError);
      jest.useRealTimers();
    });
  });

  it("Пользователь становится активным, если возраст достаточный", async () => {
    // Arrange
    const { userRepo, settingRepo, userService } = getMocks();

    const user = UserMother.aPendingCustomer().build();
    await userRepo.save(user);

    const setting = SettingMother.aMinUserAgeSetting().build();
    await settingRepo.save(setting);

    // Act
    await userService.update(user.id, { birthdate: new Date("2001-01-01") });

    // Assert
    const updatedUser = await userRepo.getById(user.id);
    expect(updatedUser.isActive).toBeTruthy();
  });
});

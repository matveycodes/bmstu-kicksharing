import { SmsMockGateway } from "../../../__mocks__/gateways/sms";
import { AuthTokenMockRepo } from "../../../__mocks__/repos/auth-token-repo";
import { TotpMockRepo } from "../../../__mocks__/repos/totp-repo";
import { UserMockRepo } from "../../../__mocks__/repos/user-repo";
import { NotFoundError } from "../../../errors/not-found";
import { ValidationError } from "../../../errors/validation";
import { AuthService } from "../../../services/auth";
import { UserBuilder } from "../../builders/user";

const getMocks = () => {
  const userRepo = new UserMockRepo();
  const totpRepo = new TotpMockRepo();
  const authTokenRepo = new AuthTokenMockRepo();

  const sms = new SmsMockGateway();

  const authService = new AuthService({
    userRepo,
    totpRepo,
    authTokenRepo,
    smsGateway: sms,
  });

  return { userRepo, totpRepo, authTokenRepo, sms, authService };
};

describe("AuthService", () => {
  describe("Запрос авторизации (request)", () => {
    it("Успешно создает запрос на авторизацию", async () => {
      // Arrange
      const { authService, totpRepo } = getMocks();

      // Act
      const signature = await authService.request("79991234567");

      // Assert
      const totp = await totpRepo.getBySignature(signature);
      expect(totp).toHaveProperty("phone", "79991234567");
    });
  });

  describe("Авторизация (proceed)", () => {
    it("Бросается исключение при вводе неверного кода", async () => {
      // Arrange
      const { authService, totpRepo } = getMocks();

      // Act
      const signature = await authService.request("79991234567");

      // Assert
      const totp = await totpRepo.getBySignature(signature);
      const proceedPromise = authService.proceed(totp.signature, totp.code - 1);
      await expect(proceedPromise).rejects.toThrow(ValidationError);
    });

    it("Создает пользователя, если он не зарегистрирован", async () => {
      // Arrange
      const { authService, totpRepo, userRepo } = getMocks();

      const noUserPromise = userRepo.getByPhone("79991234567");
      await expect(noUserPromise).rejects.toThrow(NotFoundError);

      // Act
      const signature = await authService.request("79991234567");
      const totp = await totpRepo.getBySignature(signature);
      await authService.proceed(totp.signature, totp.code);

      // Assert
      const userPromise = userRepo.getByPhone("79991234567");
      await expect(userPromise).resolves.not.toThrow();
    });

    it("Не создает пользователя, если он уже существует", async () => {
      // Arrange
      const { authService, totpRepo, userRepo } = getMocks();

      const user = new UserBuilder().withPhone("79991234567").build();
      await userRepo.save(user);

      // Act
      const signature = await authService.request(user.phone);
      const totp = await totpRepo.getBySignature(signature);
      await authService.proceed(totp.signature, totp.code);

      // Assert
      const users = await userRepo.getAllPaginated({ page: 1, pageSize: 1 });
      expect(users).toHaveProperty("totalCount", 1);
      expect(users.results[0]).toEqual(user);
    });
  });
});

import { NotFoundError } from "../../../errors/not-found";
import { AuthTokenPostgresRepo } from "../../../repos/postgres/auth-token/repo";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { UserPostgresRepo } from "../../../repos/postgres/user/repo";
import { AuthTokenBuilder } from "../../builders/auth-token";
import { UserMother } from "../../mothers/user";

const pool = createPostgresPool();

const authTokenRepo = new AuthTokenPostgresRepo(pool);
const userRepo = new UserPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE auth_tokens, users CASCADE");
});

describe("AuthTokenPostgresRepo", () => {
  describe("Получение токена по значению (getByValue)", () => {
    it("Бросается исключение, если токен с указанным значением не найден", async () => {
      // Act
      const getPromise = authTokenRepo.getByValue("SOME_VALUE");

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно получает токен по значению", async () => {
      // Arrange
      const user = UserMother.aPendingCustomer().build();
      await userRepo.save(user);

      const authToken = new AuthTokenBuilder().withUserId(user.id).build();
      await authTokenRepo.save(authToken);

      // Act
      const getPromise = authTokenRepo.getByValue(authToken.value);

      // Assert
      await expect(getPromise).resolves.toEqual(authToken);
    });
  });

  describe("Сохранение (save)", () => {
    it("Успешно сохраняется токен", async () => {
      // Arrange
      const user = UserMother.aPendingCustomer().build();
      await userRepo.save(user);

      const authToken = new AuthTokenBuilder().withUserId(user.id).build();

      // Act
      const savePromise = authTokenRepo.save(authToken);

      // Assert
      await expect(savePromise).resolves.not.toThrow();

      const fetchedAuthToken = await authTokenRepo.getByValue(authToken.value);
      expect(fetchedAuthToken).toEqual(authToken);
    });
  });
});

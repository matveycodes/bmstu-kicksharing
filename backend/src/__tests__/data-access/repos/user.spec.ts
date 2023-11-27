import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { UserPostgresRepo } from "../../../repos/postgres/user/repo";
import { UserMother } from "../../mothers/user";

const pool = createPostgresPool();

const userRepo = new UserPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE users CASCADE");
});

describe("UserPostgresRepo", () => {
  describe("Сохранение информации о пользователе (save)", () => {
    it("Успешно сохраняется пользователь", async () => {
      // Arrange
      const user = UserMother.aPendingCustomer().build();

      // Act
      const savePromise = userRepo.save(user);

      // Assert
      await expect(savePromise).resolves.not.toThrow();
    });
  });

  describe("Получение пользователя по ID (getUserById)", () => {
    it("Бросает исключение, если пользователь с указанным ID не найден", async () => {
      // Act
      const getPromise = userRepo.getById(userRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращает пользователя", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      // Act
      const getPromise = userRepo.getById(user.id);

      // Assert
      await expect(getPromise).resolves.toEqual(user);
    });
  });

  describe("Получение пользователя по номеру телефону (getUserByPhone)", () => {
    it("Бросает исключение, если пользователь с указанным телефоном не найден", async () => {
      // Act
      const getPromise = userRepo.getByPhone("79999999999");

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращает пользователя", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      // Act
      const getPromise = userRepo.getByPhone(user.phone);

      // Assert
      await expect(getPromise).resolves.toEqual(user);
    });
  });
});

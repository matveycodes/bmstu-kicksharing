import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { TotpPostgresRepo } from "../../../repos/postgres/totp/repo";
import { TotpBuilder } from "../../builders/totp";

const pool = createPostgresPool();

const totpRepo = new TotpPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE totp CASCADE");
});

describe("TotpPostgresRepo", () => {
  describe("Сохранение кода (save)", () => {
    it("Успешно сохраняется код", async () => {
      // Arrange
      const totp = new TotpBuilder().build();

      // Act
      const savePromise = totpRepo.save(totp);

      // Assert
      await expect(savePromise).resolves.not.toThrow();
    });
  });

  describe("Получение кода по подписи (getBySignature)", () => {
    it("Бросает исключение, если код с указанной подписью не найдена", async () => {
      // Act
      const getPromise = totpRepo.getBySignature("SOME_SIGNATURE");

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращает код", async () => {
      // Arrange
      const totp = new TotpBuilder().build();
      await totpRepo.save(totp);

      // Act
      const getPromise = totpRepo.getBySignature(totp.signature);

      // Assert
      await expect(getPromise).resolves.toEqual(totp);
    });
  });
});

import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { SettingPostgresRepo } from "../../../repos/postgres/setting/repo";
import { SettingBuilder } from "../../builders/setting";

const pool = createPostgresPool();

const settingRepo = new SettingPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE settings CASCADE");
});

describe("SettingPostgresRepo", () => {
  describe("Сохранение настройки (save)", () => {
    it("Успешно сохраняется настройка", async () => {
      // Arrange
      const setting = new SettingBuilder().build();

      // Act
      const savePromise = settingRepo.save(setting);

      // Assert
      await expect(savePromise).resolves.not.toThrow();
    });
  });

  describe("Получение настройки по имени (getByName)", () => {
    it("Бросается исключение, если настройка с указанным именем не найдена", async () => {
      // Act
      const getPromise = settingRepo.getByName("SOME_NAME");

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается настройка", async () => {
      // Arrange
      const setting = new SettingBuilder().build();
      await settingRepo.save(setting);

      // Act
      const getPromise = settingRepo.getByName(setting.name);

      // Assert
      await expect(getPromise).resolves.toEqual(setting);
    });
  });
});

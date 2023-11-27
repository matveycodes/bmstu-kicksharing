import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { ScooterManufacturerPostgresRepo } from "../../../repos/postgres/scooter-manufacturer/repo";
import { ScooterModelPostgresRepo } from "../../../repos/postgres/scooter-model/repo";
import { ScooterManufacturerBuilder } from "../../builders/scooter-manufacturer";
import { ScooterModelBuilder } from "../../builders/scooter-model";

const pool = createPostgresPool();

const scooterManufacturerRepo = new ScooterManufacturerPostgresRepo(pool);
const scooterModelRepo = new ScooterModelPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE scooter_models, scooter_manufacturers CASCADE");
});

describe("ScooterModelPostgresRepo", () => {
  describe("Получение модели самоката по ID (getById)", () => {
    it("Бросается исключение, если модель самоката с указанным ID не найдена", async () => {
      // Act
      const getPromise = scooterModelRepo.getById(scooterModelRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается модель самоката", async () => {
      // Arrange
      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      // Act
      const getPromise = scooterModelRepo.getById(scooterModel.id);

      // Assert
      await expect(getPromise).resolves.toEqual(scooterModel);
    });
  });
});

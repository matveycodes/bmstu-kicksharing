import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { ScooterPostgresRepo } from "../../../repos/postgres/scooter/repo";
import { ScooterManufacturerPostgresRepo } from "../../../repos/postgres/scooter-manufacturer/repo";
import { ScooterModelPostgresRepo } from "../../../repos/postgres/scooter-model/repo";
import { ScooterBuilder } from "../../builders/scooter";
import { ScooterManufacturerBuilder } from "../../builders/scooter-manufacturer";
import { ScooterModelBuilder } from "../../builders/scooter-model";

const pool = createPostgresPool();

const scooterManufacturerRepo = new ScooterManufacturerPostgresRepo(pool);
const scooterModelRepo = new ScooterModelPostgresRepo(pool);
const scooterRepo = new ScooterPostgresRepo(pool);

afterEach(async () => {
  await pool.query(
    "TRUNCATE scooters, scooter_models, scooter_manufacturers CASCADE"
  );
});

describe("ScooterPostgresRepo", () => {
  describe("Получение самоката по ID (getById)", () => {
    it("Бросается исключение, если самокат с указанным ID не найден", async () => {
      // Act
      const getPromise = scooterRepo.getById(scooterRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается самокат", async () => {
      // Arrange
      const scooterManufacturer = new ScooterManufacturerBuilder().build();
      await scooterManufacturerRepo.save(scooterManufacturer);

      const scooterModel = new ScooterModelBuilder()
        .withManufacturerId(scooterManufacturer.id)
        .build();
      await scooterModelRepo.save(scooterModel);

      const scooter = new ScooterBuilder().withModelId(scooterModel.id).build();
      await scooterRepo.save(scooter);

      // Act
      const getPromise = scooterRepo.getById(scooter.id);

      // Assert
      await expect(getPromise).resolves.toEqual(scooter);
    });
  });
});

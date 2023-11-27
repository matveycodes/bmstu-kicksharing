import { createPostgresPool } from "../../../repos/postgres/pool";
import { RestrictedZonePostgresRepo } from "../../../repos/postgres/restricted-zone/repo";
import { RestrictedZoneBuilder } from "../../builders/restricted-zone";

const pool = createPostgresPool();

const restrictedZoneRepo = new RestrictedZonePostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE restricted_zones CASCADE");
});

describe("RestrictedZonePostgresRepo", () => {
  describe("Получение зон ограничения скорости в границах (getWithinBoundsPaginated)", () => {
    it("Возвращается пустой массив, если в границах нет зон", async () => {
      // Act
      const getPromise = restrictedZoneRepo.getWithinBoundsPaginated(
        {
          minLatitude: -90,
          maxLatitude: 90,
          minLongitude: -180,
          maxLongitude: 180,
        },
        { page: 1, pageSize: 1 }
      );

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: 0,
        nextPage: null,
        previousPage: null,
        results: [],
      });
    });

    it("Возвращается массив зон ограничения скорости в границах", async () => {
      // Arrange
      const restrictedZone = new RestrictedZoneBuilder()
        .withPolygon([
          { latitude: 50, longitude: 50 },
          { latitude: 50.5, longitude: 50 },
          { latitude: 50.5, longitude: 50.5 },
          { latitude: 50, longitude: 50.5 },
          { latitude: 50, longitude: 50 },
        ])
        .build();
      await restrictedZoneRepo.save(restrictedZone);

      // Act
      const getPromise = restrictedZoneRepo.getWithinBoundsPaginated(
        {
          minLatitude: 49,
          maxLatitude: 51,
          minLongitude: 49,
          maxLongitude: 51,
        },
        { page: 1, pageSize: 1 }
      );

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: 1,
        nextPage: null,
        previousPage: null,
        results: [restrictedZone],
      });
    });
  });
});

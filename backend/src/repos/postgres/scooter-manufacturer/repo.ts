import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IScooterManufacturerRepo } from "../../../interfaces/scooter-manufacturer-repo";
import { ScooterManufacturerId } from "../../../models/scooter-manufacturer";
import { PostgresPool } from "../pool";
import * as QUERIES from "./queries";
import { ScooterManufacturerRow } from "./types";
import { parseScooterManufacturerRow } from "./utils";

class ScooterManufacturerPostgresRepo implements IScooterManufacturerRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getById(id: ScooterManufacturerId) {
    let row: ScooterManufacturerRow | null = null;

    try {
      row = await this._pool.oneOrNone<ScooterManufacturerRow>(
        QUERIES.SELECT_BY_ID,
        { id }
      );
    } catch {
      throw new DataAccessError("Не удалось получить производителя самокатов");
    }

    if (!row) {
      throw new NotFoundError("Производитель самокатов не найден");
    }

    return parseScooterManufacturerRow(row);
  }
}

export { ScooterManufacturerPostgresRepo };

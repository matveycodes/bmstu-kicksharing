import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IScooterModelRepo } from "../../../interfaces/scooter-model-repo";
import { ScooterModelId } from "../../../models/scooter-model";
import { PostgresPool } from "../pool";
import * as QUERIES from "./queries";
import { ScooterModelRow } from "./types";
import { parseScooterModelRow } from "./utils";

class ScooterModelPostgresRepo implements IScooterModelRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getById(id: ScooterModelId) {
    let row: ScooterModelRow | null = null;

    try {
      row = await this._pool.oneOrNone<ScooterModelRow>(QUERIES.SELECT_BY_ID, {
        id,
      });
    } catch {
      throw new DataAccessError("Не удалось получить модель самоката");
    }

    if (!row) {
      throw new NotFoundError("Модель самоката не найдена");
    }

    return parseScooterModelRow(row);
  }
}

export { ScooterModelPostgresRepo };

import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IScooterModelRepo } from "../../../interfaces/scooter-model-repo";
import { ScooterModel, ScooterModelId } from "../../../models/scooter-model";
import { PostgresPool } from "../pool";
import * as QUERIES from "./queries";
import { ScooterModelRow } from "./types";
import { parseScooterModelRow } from "./utils";

class ScooterModelPostgresRepo implements IScooterModelRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public nextId() {
    return crypto.randomUUID() as ScooterModelId;
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

  public async save(scooterModel: ScooterModel) {
    try {
      await this._pool.query(QUERIES.INSERT, scooterModel.toJSON());
    } catch {
      throw new DataAccessError("Не удалось сохранить модель самоката");
    }
  }
}

export { ScooterModelPostgresRepo };

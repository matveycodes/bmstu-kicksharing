import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IScooterRepo } from "../../../interfaces/scooter-repo";
import { Scooter, ScooterId } from "../../../models/scooter";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { ScooterRow } from "./types";
import { parseScooterRow } from "./utils";

class ScooterPostgresRepo implements IScooterRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public nextId() {
    return crypto.randomUUID() as ScooterId;
  }

  public async getById(id: ScooterId) {
    let row: ScooterRow | null = null;

    try {
      row = await this._pool.oneOrNone<ScooterRow>(QUERIES.SELECT_BY_ID, {
        id,
      });
    } catch {
      throw new DataAccessError("Не удалось получить самокат");
    }

    if (!row) {
      throw new NotFoundError("Самокат не найден");
    }

    return parseScooterRow(row);
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<ScooterRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return {
        ...response,
        results: response.results.map(parseScooterRow),
      };
    } catch {
      throw new DataAccessError("Не удалось получить список самокатов");
    }
  }

  public async save(scooter: Scooter) {
    try {
      await this._pool.query(QUERIES.INSERT, scooter.toJSON());
    } catch {
      throw new DataAccessError("Не удалось сохранить самокат");
    }
  }
}

export { ScooterPostgresRepo };

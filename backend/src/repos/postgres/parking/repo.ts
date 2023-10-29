import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access-error";
import { IParkingRepo } from "../../../interfaces/parking-repo";
import { ParkingId } from "../../../models/parking";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { ParkingRow } from "./types";
import { parseParkingRow } from "./utils";

class ParkingPostgresRepo implements IParkingRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public nextId() {
    return crypto.randomUUID() as ParkingId;
  }

  public async getAll(pagination: PaginationRequest) {
    try {
      const rows = await selectWithPagination<ParkingRow>(
        this._pool,
        QUERIES.SELECT_ALL,
        pagination
      );
      return { ...rows, results: rows.results.map(parseParkingRow) };
    } catch (err) {
      throw new DataAccessError("Не удалось получить список парковок");
    }
  }

  public async get(id: ParkingId) {
    try {
      const row = await this._pool.one<ParkingRow>(QUERIES.SELECT_BY_ID, [id]);
      return parseParkingRow(row);
    } catch (err) {
      throw new DataAccessError("Не удалось получить парковку");
    }
  }
}

export { ParkingPostgresRepo };

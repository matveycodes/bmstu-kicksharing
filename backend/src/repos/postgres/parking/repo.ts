import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IParkingRepo } from "../../../interfaces/parking-repo";
import { ParkingId } from "../../../models/parking";
import { Bounds } from "../../../vo/bounds";
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

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<ParkingRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseParkingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить парковки");
    }
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<ParkingRow>(
        this._pool,
        QUERIES.SELECT_WITHIN_BOUNDS_PAGINATED,
        pagination,
        bounds
      );

      return { ...response, results: response.results.map(parseParkingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить парковки");
    }
  }

  public async getById(id: ParkingId) {
    let row: ParkingRow | null = null;

    try {
      row = await this._pool.oneOrNone<ParkingRow>(QUERIES.SELECT_BY_ID, {
        id,
      });
    } catch {
      throw new DataAccessError("Не удалось получить парковку");
    }

    if (!row) {
      throw new NotFoundError("Парковка не найдена");
    }

    return parseParkingRow(row);
  }
}

export { ParkingPostgresRepo };

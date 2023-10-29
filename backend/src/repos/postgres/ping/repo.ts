import { DataAccessError } from "../../../errors/data-access";
import { IPingRepo } from "../../../interfaces/ping-repo";
import { ScooterId } from "../../../models/scooter";
import { Bounds } from "../../../vo/bounds";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { PingRow } from "./types";
import { parsePingRow } from "./utils";

class PingPostgresRepo implements IPingRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getRentableWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<PingRow>(
        this._pool,
        QUERIES.SELECT_RENTABLE_WITHIN_BOUNDS_PAGINATED,
        pagination,
        bounds
      );

      return { ...response, results: response.results.map(parsePingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить записи о состоянии");
    }
  }

  public async getDischargedWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<PingRow>(
        this._pool,
        QUERIES.SELECT_DISCHARGED_WITHIN_BOUNDS_PAGINATED,
        pagination,
        bounds
      );

      return { ...response, results: response.results.map(parsePingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить записи о состоянии");
    }
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<PingRow>(
        this._pool,
        QUERIES.SELECT_WITHIN_BOUNDS_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parsePingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить записи о состоянии");
    }
  }

  public async getLatestByScooterId(scooterId: ScooterId) {
    try {
      const row = await this._pool.oneOrNone<PingRow>(
        QUERIES.SELECT_LATEST_BY_SCOOTER_ID,
        { scooterId }
      );
      return row ? parsePingRow(row) : null;
    } catch {
      throw new DataAccessError("Не удалось получить запись о состоянии");
    }
  }

  public async getDischargedPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<PingRow>(
        this._pool,
        QUERIES.SELECT_DISCHARGED_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parsePingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить записи о состоянии");
    }
  }

  public async getRentablePaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<PingRow>(
        this._pool,
        QUERIES.SELECT_RENTABLE_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parsePingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить записи о состоянии");
    }
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<PingRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parsePingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить записи о состоянии");
    }
  }
}

export { PingPostgresRepo };

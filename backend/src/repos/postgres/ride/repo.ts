import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IRideRepo } from "../../../interfaces/ride-repo";
import { Ride, RideId } from "../../../models/ride";
import { ScooterId } from "../../../models/scooter";
import { UserId } from "../../../models/user";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { RideRow } from "./types";
import { parseRideRow } from "./utils";

class RidePostgresRepo implements IRideRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<RideRow>(
        this._pool,
        QUERIES.SELECT_ACTIVE_BY_USER_ID_PAGINATED,
        pagination,
        { userId }
      );

      return { ...response, results: response.results.map(parseRideRow) };
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public async getFinishedByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<RideRow>(
        this._pool,
        QUERIES.SELECT_FINISHED_BY_USER_ID_PAGINATED,
        pagination,
        { userId }
      );

      return { ...response, results: response.results.map(parseRideRow) };
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public nextId() {
    return crypto.randomUUID() as RideId;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<RideRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseRideRow) };
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public async getActivePaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<RideRow>(
        this._pool,
        QUERIES.SELECT_ACTIVE_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseRideRow) };
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public async getFinishedPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<RideRow>(
        this._pool,
        QUERIES.SELECT_FINISHED_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseRideRow) };
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public async save(ride: Ride) {
    try {
      await this._pool.query(QUERIES.INSERT, ride.toJSON());
    } catch {
      throw new DataAccessError("Не удалось сохранить поездку");
    }
  }

  public async getActiveByScooterId(scooterId: ScooterId) {
    try {
      const rows = await this._pool.manyOrNone<RideRow>(
        QUERIES.SELECT_ACTIVE_BY_SCOOTER_ID,
        { scooterId }
      );

      return rows.map(parseRideRow);
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public async getActiveByUserId(userId: UserId) {
    try {
      const rows = await this._pool.manyOrNone<RideRow>(
        QUERIES.SELECT_ACTIVE_BY_USER_ID,
        { userId }
      );

      return rows.map(parseRideRow);
    } catch {
      throw new DataAccessError("Не удалось получить поездки");
    }
  }

  public async isScooterTaken(scooterId: ScooterId) {
    return (await this.getActiveByScooterId(scooterId)).length > 0;
  }

  public async getById(id: RideId) {
    let row: RideRow | null = null;

    try {
      row = await this._pool.oneOrNone(QUERIES.SELECT_BY_ID, { id });
    } catch {
      throw new DataAccessError("Не удалось получить поездку");
    }

    if (!row) {
      throw new NotFoundError("Поездка не найдена");
    }

    return parseRideRow(row);
  }
}

export { RidePostgresRepo };

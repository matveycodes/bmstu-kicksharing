import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IBookingRepo } from "../../../interfaces/booking-repo";
import { Booking, BookingId } from "../../../models/booking";
import { ScooterId } from "../../../models/scooter";
import { UserId } from "../../../models/user";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { BookingRow } from "./types";
import { parseBookingRow } from "./utils";

class BookingPostgresRepo implements IBookingRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<BookingRow>(
        this._pool,
        QUERIES.SELECT_ACTIVE_BY_USER_ID_PAGINATED,
        pagination,
        { userId }
      );

      return { ...response, results: response.results.map(parseBookingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить бронирования");
    }
  }

  public nextId() {
    return crypto.randomUUID() as BookingId;
  }

  public async getById(id: BookingId) {
    let row: BookingRow | null = null;

    try {
      row = await this._pool.oneOrNone(QUERIES.SELECT_BY_ID, { id });
    } catch {
      throw new DataAccessError("Не удалось получить бронирование");
    }

    if (!row) {
      throw new NotFoundError("Бронирование не найдено");
    }

    return parseBookingRow(row);
  }

  public async getActiveByUserId(userId: UserId) {
    try {
      const rows = await this._pool.manyOrNone(
        QUERIES.SELECT_ACTIVE_BY_USER_ID,
        { userId }
      );

      return rows.map(parseBookingRow);
    } catch {
      throw new DataAccessError("Не удалось получить бронирования");
    }
  }

  public async getActiveByScooterId(scooterId: ScooterId) {
    try {
      const rows = await this._pool.manyOrNone<BookingRow>(
        QUERIES.SELECT_ACTIVE_BY_SCOOTER_ID,
        { scooterId }
      );

      return rows.map(parseBookingRow);
    } catch {
      throw new DataAccessError("Не удалось получить бронирования");
    }
  }

  public async isScooterTaken(scooterId: ScooterId) {
    return (await this.getActiveByScooterId(scooterId)).length > 0;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<BookingRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseBookingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить бронирования");
    }
  }

  public async getActivePaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<BookingRow>(
        this._pool,
        QUERIES.SELECT_ACTIVE_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseBookingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить бронирования");
    }
  }

  public async getFinishedPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<BookingRow>(
        this._pool,
        QUERIES.SELECT_FINISHED_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseBookingRow) };
    } catch {
      throw new DataAccessError("Не удалось получить бронирования");
    }
  }

  public async save(booking: Booking) {
    try {
      const values = {
        ...booking.toJSON(),
        dateStarted: booking.dateStarted.toISOString(),
        dateFinished: booking.dateFinished.toISOString(),
      };

      await this._pool.query(QUERIES.INSERT, values);
    } catch {
      throw new DataAccessError("Не удалось сохранить бронирование");
    }
  }
}

export { BookingPostgresRepo };

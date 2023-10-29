import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IUserRepo } from "../../../interfaces/user-repo";
import { User, UserId } from "../../../models/user";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { UserRow } from "./types";
import { parseUserRow } from "./utils";

class UserPostgresRepo implements IUserRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public nextId() {
    return crypto.randomUUID() as UserId;
  }

  public async save(user: User) {
    try {
      await this._pool.query(QUERIES.INSERT, user.toJSON());
    } catch {
      throw new DataAccessError("Не удалось сохранить пользователя");
    }
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<UserRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parseUserRow) };
    } catch {
      throw new DataAccessError("Не удалось получить пользователей");
    }
  }

  public async findAllPaginated(query: string, pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<UserRow>(
        this._pool,
        QUERIES.FIND_ALL_PAGINATED,
        pagination,
        { query: `%${query}%` }
      );

      return { ...response, results: response.results.map(parseUserRow) };
    } catch {
      throw new DataAccessError("Не удалось получить пользователей");
    }
  }

  public async getById(id: UserId) {
    let row: UserRow | null = null;

    try {
      row = await this._pool.oneOrNone(QUERIES.SELECT_BY_ID, { id });
    } catch {
      throw new DataAccessError("Не удалось получить пользователя");
    }

    if (!row) {
      throw new NotFoundError("Пользователь не найден");
    }

    return parseUserRow(row);
  }

  public async getByPhone(phone: User["phone"]) {
    let row: UserRow | null = null;

    try {
      row = await this._pool.oneOrNone(QUERIES.SELECT_BY_PHONE, { phone });
    } catch {
      throw new DataAccessError("Не удалось получить пользователя");
    }

    if (!row) {
      throw new NotFoundError("Пользователь не найден");
    }

    return parseUserRow(row);
  }
}

export { UserPostgresRepo };

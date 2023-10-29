import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IAuthTokenRepo } from "../../../interfaces/auth-token-repo";
import { AuthToken } from "../../../vo/auth-token";
import { PostgresPool } from "../pool";
import * as QUERIES from "./queries";
import { AuthTokenRow } from "./types";
import { parseAuthTokenRow } from "./utils";

class AuthTokenPostgresRepo implements IAuthTokenRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getByValue(value: AuthToken["value"]) {
    let row: AuthTokenRow | null = null;

    try {
      row = await this._pool.oneOrNone<AuthTokenRow>(QUERIES.SELECT_BY_VALUE, {
        value,
      });
    } catch {
      throw new DataAccessError("Не удалось получить токен");
    }

    if (!row) {
      throw new NotFoundError("Токен не найден");
    }

    return parseAuthTokenRow(row);
  }

  public async save(authToken: AuthToken) {
    try {
      await this._pool.query(QUERIES.INSERT, authToken);
    } catch {
      throw new DataAccessError("Не удалось сохранить токен");
    }
  }
}

export { AuthTokenPostgresRepo };

import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { ISubscriptionRepo } from "../../../interfaces/subscription-repo";
import { SubscriptionId } from "../../../models/subscription";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { SubscriptionRow } from "./types";
import { parseSubscriptionRow } from "./utils";

class SubscriptionPostgresRepo implements ISubscriptionRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public nextId() {
    return crypto.randomUUID() as SubscriptionId;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<SubscriptionRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return {
        ...response,
        results: response.results.map(parseSubscriptionRow),
      };
    } catch {
      throw new DataAccessError("Не удалось получить список подписок");
    }
  }

  public async getById(id: SubscriptionId) {
    let row: SubscriptionRow | null = null;

    try {
      row = await this._pool.oneOrNone<SubscriptionRow>(QUERIES.SELECT_BY_ID, {
        id,
      });
    } catch {
      throw new DataAccessError("Не удалось получить подписку");
    }

    if (!row) {
      throw new NotFoundError("Подписка не найдена");
    }

    return parseSubscriptionRow(row);
  }
}

export { SubscriptionPostgresRepo };

import { DataAccessError } from "../../../errors/data-access";
import { IPurchaseRepo } from "../../../interfaces/purchase-repo";
import { UserId } from "../../../models/user";
import { PaginationRequest } from "../../../vo/pagination";
import { Purchase } from "../../../vo/purchase";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { PurchaseRow } from "./types";
import { parsePurchaseRow } from "./utils";

class PurchasePostgresRepo implements IPurchaseRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async save(purchase: Purchase) {
    try {
      await this._pool.query(QUERIES.INSERT, purchase);
    } catch {
      throw new DataAccessError("Не удалось сохранить покупку");
    }
  }

  public async getLastActiveByUserId(userId: UserId) {
    try {
      const row = await this._pool.oneOrNone<PurchaseRow>(
        QUERIES.SELECT_LAST_ACTIVE_BY_USER_ID,
        { userId }
      );

      return row ? parsePurchaseRow(row) : null;
    } catch {
      throw new DataAccessError("Не удалось получить покупку");
    }
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<PurchaseRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return { ...response, results: response.results.map(parsePurchaseRow) };
    } catch {
      throw new DataAccessError("Не удалось получить список покупок");
    }
  }

  public async getByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    try {
      const response = await selectWithPagination<PurchaseRow>(
        this._pool,
        QUERIES.SELECT_ALL_BY_USER_ID_PAGINATED,
        pagination,
        { userId }
      );

      return { ...response, results: response.results.map(parsePurchaseRow) };
    } catch {
      throw new DataAccessError("Не удалось получить список покупок");
    }
  }
}

export { PurchasePostgresRepo };

import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { IRestrictedZoneRepo } from "../../../interfaces/restricted-zone-repo";
import { RestrictedZoneId } from "../../../models/restricted-zone";
import { Bounds } from "../../../vo/bounds";
import { PaginationRequest } from "../../../vo/pagination";
import { PostgresPool } from "../pool";
import { selectWithPagination } from "../utils";
import * as QUERIES from "./queries";
import { RestrictedZoneRow } from "./types";
import { parseRestrictedZoneRow } from "./utils";

class RestrictedZonePostgresRepo implements IRestrictedZoneRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public nextId() {
    return crypto.randomUUID() as RestrictedZoneId;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    try {
      const response = await selectWithPagination<RestrictedZoneRow>(
        this._pool,
        QUERIES.SELECT_ALL_PAGINATED,
        pagination
      );

      return {
        ...response,
        results: response.results.map(parseRestrictedZoneRow),
      };
    } catch {
      throw new DataAccessError(
        "Не удалось получить список зон ограничения скорости"
      );
    }
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    // TODO:
    return this.getAllPaginated(pagination);
  }

  public async getById(id: RestrictedZoneId) {
    let row: RestrictedZoneRow | null = null;

    try {
      row = await this._pool.oneOrNone<RestrictedZoneRow>(
        QUERIES.SELECT_BY_ID,
        { id }
      );
    } catch {
      throw new DataAccessError(
        "Не удалось получить зону ограничения скорости"
      );
    }

    if (!row) {
      throw new NotFoundError("Зона ограничения скорости не найдена");
    }

    return parseRestrictedZoneRow(row);
  }
}

export { RestrictedZonePostgresRepo };

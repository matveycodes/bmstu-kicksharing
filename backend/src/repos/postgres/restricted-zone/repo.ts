import * as crypto from "crypto";

import { DataAccessError } from "../../../errors/data-access-error";
import { IRestrictedZoneRepo } from "../../../interfaces/restricted-zone-repo";
import { RestrictedZoneId } from "../../../models/restricted-zone";
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

  public async getAll(pagination: PaginationRequest) {
    try {
      const rows = await selectWithPagination<RestrictedZoneRow>(
        this._pool,
        QUERIES.SELECT_ALL,
        pagination
      );
      return { ...rows, results: rows.results.map(parseRestrictedZoneRow) };
    } catch (err) {
      throw new DataAccessError(
        "Не удалось получить список зон ограничения скорости"
      );
    }
  }

  public async get(id: RestrictedZoneId) {
    try {
      const row = await this._pool.one<RestrictedZoneRow>(
        QUERIES.SELECT_BY_ID,
        [id]
      );
      return parseRestrictedZoneRow(row);
    } catch (err) {
      throw new DataAccessError("Не удалось получить парковку");
    }
  }
}

export { RestrictedZonePostgresRepo };

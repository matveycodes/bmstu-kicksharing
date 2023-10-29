import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { ITotpRepo } from "../../../interfaces/totp-repo";
import { Totp } from "../../../vo/totp";
import { PostgresPool } from "../pool";
import * as QUERIES from "./queries";
import { TotpRow } from "./types";
import { parseTotpRow } from "./utils";

class TotpPostgresRepo implements ITotpRepo {
  private readonly _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async save(totp: Totp) {
    try {
      const values = {
        ...totp,
        dateSent: totp.dateSent.toISOString(),
        dateUsed: totp.dateUsed?.toISOString(),
      };

      await this._pool.query(QUERIES.INSERT, values);
    } catch {
      throw new DataAccessError("Не удалось сохранить код");
    }
  }

  public async getBySignature(signature: Totp["signature"]) {
    let row: TotpRow | null = null;

    try {
      row = await this._pool.oneOrNone<TotpRow>(QUERIES.SELECT_BY_SIGNATURE, {
        signature,
      });
    } catch {
      throw new DataAccessError("Не удалось получить код");
    }

    if (!row) {
      throw new NotFoundError("Код не найден");
    }

    return parseTotpRow(row);
  }
}

export { TotpPostgresRepo };

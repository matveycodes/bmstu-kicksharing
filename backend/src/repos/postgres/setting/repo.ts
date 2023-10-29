import { DataAccessError } from "../../../errors/data-access";
import { NotFoundError } from "../../../errors/not-found";
import { ISettingRepo } from "../../../interfaces/setting-repo";
import { Setting } from "../../../vo/setting";
import { PostgresPool } from "../pool";
import * as QUERIES from "./queries";
import { SettingRow } from "./types";
import { parseSettingRow } from "./utils";

class SettingPostgresRepo implements ISettingRepo {
  private _pool: PostgresPool;

  public constructor(pool: PostgresPool) {
    this._pool = pool;
  }

  public async getByName(name: string) {
    let row: SettingRow | null = null;

    try {
      row = await this._pool.oneOrNone<SettingRow>(QUERIES.SELECT_BY_NAME, {
        name,
      });
    } catch {
      throw new DataAccessError("Не удалось получить настройку");
    }

    if (!row) {
      throw new NotFoundError("Настройка не найдена");
    }

    return parseSettingRow(row);
  }

  public async getAll() {
    try {
      const rows = await this._pool.manyOrNone<SettingRow>(QUERIES.SELECT_ALL);
      return rows.map(parseSettingRow);
    } catch {
      throw new DataAccessError("Не удалось получить настройки");
    }
  }

  public async save(setting: Setting) {
    try {
      await this._pool.query(QUERIES.INSERT, setting);
    } catch {
      throw new DataAccessError("Не удалось сохранить настройку");
    }
  }
}

export { SettingPostgresRepo };

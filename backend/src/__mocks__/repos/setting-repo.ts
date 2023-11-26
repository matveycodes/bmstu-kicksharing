import { NotFoundError } from "../../errors/not-found";
import { ISettingRepo } from "../../interfaces/setting-repo";
import { Setting } from "../../vo/setting";

class SettingMockRepo implements ISettingRepo {
  private _settings: Setting[] = [];

  public async getAll() {
    return this._settings;
  }

  public async getByName(name: string) {
    const setting = this._settings.find((s) => s.name === name);

    if (!setting) {
      throw new NotFoundError("Настройка не найдена");
    }

    return setting;
  }

  public async save(setting: Setting) {
    this.remove(setting.name);
    this._settings.push(setting);
  }

  private remove(name: string) {
    this._settings = this._settings.filter((s) => s.name !== name);
  }
}

export { SettingMockRepo };

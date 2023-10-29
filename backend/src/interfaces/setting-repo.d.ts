import { Setting } from "../vo/setting";

interface ISettingRepo {
  save(setting: Setting): Promise<void>;
  getAll(): Promise<Setting[]>;
  getByName(name: string): Promise<Setting>;
}

export { ISettingRepo };

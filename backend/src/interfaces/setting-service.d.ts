import { Setting } from "../vo/setting";

interface ISettingService {
  getAll(): Promise<Setting[]>;
  save(setting: Setting): Promise<void>;
}

export { ISettingService };

import { Setting } from "../vo/setting";

interface ISettingSerializer {
  serialize(source: Setting[]): object;
}

export { ISettingSerializer };

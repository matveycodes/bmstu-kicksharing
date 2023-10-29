import { ISettingSerializer } from "../interfaces/setting-serializer";
import { Setting } from "../vo/setting";

class SettingSerializer implements ISettingSerializer {
  public serialize(source: Setting[]) {
    const record: Record<string, string> = {};

    for (const setting of source) {
      record[setting.name] = setting.value;
    }

    return record;
  }
}

export { SettingSerializer };

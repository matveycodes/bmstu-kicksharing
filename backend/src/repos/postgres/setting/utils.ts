import { Setting } from "../../../vo/setting";
import { SettingRow } from "./types";

const parseSettingRow = (row: SettingRow): Setting => {
  return {
    name: row.name,
    value: row.value,
  } as Setting;
};

export { parseSettingRow };

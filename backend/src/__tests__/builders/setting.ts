import { Setting } from "../../vo/setting";
import { Builder } from "../types/builder";

class SettingBuilder implements Builder<Setting> {
  private _name: string = "SETTING";
  private _value: string = "VALUE";

  public withName(name: string) {
    this._name = name;

    return this;
  }

  public withValue(value: string) {
    this._value = value;

    return this;
  }

  public build() {
    return {
      name: this._name,
      value: this._value,
    };
  }
}

export { SettingBuilder };

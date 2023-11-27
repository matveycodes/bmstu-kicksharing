import * as crypto from "crypto";

import {
  ScooterManufacturer,
  ScooterManufacturerId,
} from "../../models/scooter-manufacturer";
import { Builder } from "../types/builder";

class ScooterManufacturerBuilder implements Builder<ScooterManufacturer> {
  private _id: ScooterManufacturerId =
    crypto.randomUUID() as ScooterManufacturerId;
  private _title: string = "Scooter Manufacturer";

  public withId(id: ScooterManufacturerId) {
    this._id = id;

    return this;
  }

  public withTitle(title: string) {
    this._title = title;

    return this;
  }

  public build() {
    return new ScooterManufacturer({
      id: this._id,
      title: this._title,
    });
  }
}

export { ScooterManufacturerBuilder };

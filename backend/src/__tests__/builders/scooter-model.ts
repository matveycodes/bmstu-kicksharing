import * as crypto from "crypto";

import { ScooterManufacturerId } from "../../models/scooter-manufacturer";
import { ScooterModel, ScooterModelId } from "../../models/scooter-model";
import { Builder } from "../types/builder";

class ScooterModelBuilder implements Builder<ScooterModel> {
  private _id: ScooterModelId = crypto.randomUUID() as ScooterModelId;
  private _title: string = "Scooter Model";
  private _singleChargeMileage: number = crypto.randomInt(20, 100 + 1);
  private _weight: number = crypto.randomInt(5, 25 + 1);
  private _maxSpeed: number = crypto.randomInt(10, 30 + 1);
  private _maxLoad: number = crypto.randomInt(50, 100 + 1);
  private _year: number = crypto.randomInt(
    new Date().getFullYear() - 5,
    new Date().getFullYear() + 1
  );
  private _manufacturerId: ScooterManufacturerId =
    crypto.randomUUID() as ScooterManufacturerId;

  public withId(id: ScooterModelId) {
    this._id = id;

    return this;
  }

  public withTitle(title: string) {
    this._title = title;

    return this;
  }

  public withSingleChargeMileage(singleChargeMileage: number) {
    this._singleChargeMileage = singleChargeMileage;

    return this;
  }

  public withWeight(weight: number) {
    this._weight = weight;

    return this;
  }

  public withMaxSpeed(maxSpeed: number) {
    this._maxSpeed = maxSpeed;

    return this;
  }

  public withMaxLoad(maxLoad: number) {
    this._maxLoad = maxLoad;

    return this;
  }

  public withYear(year: number) {
    this._year = year;

    return this;
  }

  public withManufacturerId(manufacturerId: ScooterManufacturerId) {
    this._manufacturerId = manufacturerId;

    return this;
  }

  public build() {
    return new ScooterModel({
      id: this._id,
      title: this._title,
      year: this._year,
      maxLoad: this._maxLoad,
      maxSpeed: this._maxSpeed,
      weight: this._weight,
      singleChargeMileage: this._singleChargeMileage,
      manufacturerId: this._manufacturerId,
    });
  }
}

export { ScooterModelBuilder };

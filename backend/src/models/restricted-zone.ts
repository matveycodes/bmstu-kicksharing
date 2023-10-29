import { CreateRestrictedZoneModelDto } from "../dto/create-restricted-zone-model";
import { ValidationError } from "../errors/validation";
import { GPSLocation } from "../types/gps-location";
import { BaseModel } from "./base";

type RestrictedZoneId = string & { _opaque: "RestrictedZone" };

class RestrictedZone extends BaseModel<RestrictedZoneId> {
  private _polygon: GPSLocation[];
  private _speedLimit: number;

  public constructor(dto: CreateRestrictedZoneModelDto) {
    super(dto.id);

    this._polygon = dto.polygon;
    this._speedLimit = dto.speedLimit;
  }

  public get polygon() {
    return this._polygon;
  }

  public set polygon(value: GPSLocation[]) {
    if (value.length === 0) {
      throw new ValidationError(
        "Координаты зоны ограничения скорости не могут быть пустыми"
      );
    }

    this._polygon = value;
  }

  public get speedLimit() {
    return this._speedLimit;
  }

  public set speedLimit(value: number) {
    if (value <= 0) {
      throw new ValidationError(
        "Максимальная скорость не может быть отрицательной или равной нулю"
      );
    }

    this._speedLimit = value;
  }

  public toJSON() {
    return {
      ...super.toJSON(),
      polygon: this.polygon,
      speedLimit: this.speedLimit,
    };
  }
}

export { RestrictedZone, RestrictedZoneId };

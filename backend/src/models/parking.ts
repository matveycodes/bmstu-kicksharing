import { CreateParkingModelDto } from "../dto/create-parking-model";
import { GPSLocation } from "../types/gps-location";
import { BaseModel } from "./base";

type ParkingId = string & { _opaque: "Parking" };

class Parking extends BaseModel<ParkingId> {
  private _location: GPSLocation;

  public constructor(dto: CreateParkingModelDto) {
    super(dto.id);

    this._location = dto.location;
  }

  public get location() {
    return this._location;
  }

  public set location(value: GPSLocation) {
    this._location = value;
  }

  public toJSON() {
    return {
      ...super.toJSON(),
      location: this.location,
    };
  }
}

export { Parking, ParkingId };

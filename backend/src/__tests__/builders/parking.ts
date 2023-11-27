import * as crypto from "crypto";

import { Parking, ParkingId } from "../../models/parking";
import { GPSLocation } from "../../types/gps-location";
import { Builder } from "../types/builder";

class ParkingBuilder implements Builder<Parking> {
  private _id: ParkingId = crypto.randomUUID() as ParkingId;
  private _location: GPSLocation = {
    latitude: crypto.randomInt(-90, 90 + 1),
    longitude: crypto.randomInt(-180, 180 + 1),
  };

  public withId(id: ParkingId) {
    this._id = id;

    return this;
  }

  public withLocation(location: GPSLocation) {
    this._location = location;

    return this;
  }

  public build() {
    return new Parking({
      id: this._id,
      location: this._location,
    });
  }
}

export { ParkingBuilder };

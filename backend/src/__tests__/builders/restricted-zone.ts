import * as crypto from "crypto";

import { RestrictedZone, RestrictedZoneId } from "../../models/restricted-zone";
import { GPSLocation } from "../../types/gps-location";
import { Builder } from "../types/builder";

class RestrictedZoneBuilder implements Builder<RestrictedZone> {
  private _id: RestrictedZoneId = crypto.randomUUID() as RestrictedZoneId;
  private _polygon: GPSLocation[] = [
    { longitude: 1, latitude: 1 },
    { longitude: 1, latitude: 2 },
    { longitude: 2, latitude: 1 },
    { longitude: 2, latitude: 2 },
  ];
  private _speedLimit: number = crypto.randomInt(0, 25 + 1);

  public withId(id: RestrictedZoneId) {
    this._id = id;

    return this;
  }

  public withPolygon(polygon: GPSLocation[]) {
    this._polygon = polygon;

    return this;
  }

  public withSpeedLimit(speedLimit: number) {
    this._speedLimit = speedLimit;

    return this;
  }

  public build() {
    return new RestrictedZone({
      id: this._id,
      speedLimit: this._speedLimit,
      polygon: this._polygon,
    });
  }
}

export { RestrictedZoneBuilder };

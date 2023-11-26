import * as crypto from "crypto";
import sample from "lodash/sample";

import { ScooterId } from "../../models/scooter";
import { GPSLocation } from "../../types/gps-location";
import { LightsState, LockState, Ping } from "../../vo/ping";
import { Builder } from "../types/builder";

class PingBuilder implements Builder<Ping> {
  private _scooterId: ScooterId = crypto.randomUUID() as ScooterId;
  private _date: Date = new Date("2022-01-01T15:00:00");
  private _metaInfo?: Record<string, unknown> = undefined;
  private _location: GPSLocation = {
    latitude: crypto.randomInt(-90, 90 + 1),
    longitude: crypto.randomInt(-180, 180 + 1),
  };
  private _batteryLevel: number = crypto.randomInt(0, 100 + 1);
  private _lockState: LockState = sample(["locked", "unlocked"]);
  private _lightsState: LightsState = sample(["on", "off"]);

  public withScooterId(scooterId: ScooterId) {
    this._scooterId = scooterId;

    return this;
  }

  public withDate(date: Date) {
    this._date = date;

    return this;
  }

  public withMetaInfo(metaInfo: Record<string, unknown>) {
    this._metaInfo = metaInfo;

    return this;
  }

  public withLocation(location: GPSLocation) {
    this._location = location;

    return this;
  }

  public withBatteryLevel(batteryLevel: number) {
    this._batteryLevel = batteryLevel;

    return this;
  }

  public withLockState(lockState: LockState) {
    this._lockState = lockState;

    return this;
  }

  public withLightsState(lightsState: LightsState) {
    this._lightsState = lightsState;

    return this;
  }

  public build() {
    return {
      scooterId: this._scooterId,
      date: this._date,
      metaInfo: this._metaInfo,
      location: this._location,
      batteryLevel: this._batteryLevel,
      lockState: this._lockState,
      lightsState: this._lightsState,
    };
  }
}

export { PingBuilder };

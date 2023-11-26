import * as crypto from "crypto";

import { Ride, RideId } from "../../models/ride";
import { ScooterId } from "../../models/scooter";
import { UserId } from "../../models/user";
import { Builder } from "../types/builder";

class RideBuilder implements Builder<Ride> {
  private _id: RideId = crypto.randomUUID() as RideId;
  private _userId: UserId = crypto.randomUUID() as UserId;
  private _scooterId: ScooterId = crypto.randomUUID() as ScooterId;
  private _startPrice: number = crypto.randomInt(25, 100 + 1);
  private _perMinutePrice: number = crypto.randomInt(5, 10 + 1);
  private _dateStarted: Date = new Date("2023-01-01T15:00:00");
  private _dateFinished?: Date = undefined;

  public withId(id: RideId) {
    this._id = id;

    return this;
  }

  public withUserId(userId: UserId) {
    this._userId = userId;

    return this;
  }

  public withScooterId(scooterId: ScooterId) {
    this._scooterId = scooterId;

    return this;
  }

  public withStartPrice(startPrice: number) {
    this._startPrice = startPrice;

    return this;
  }

  public withPerMinutePrice(perMinutePrice: number) {
    this._perMinutePrice = perMinutePrice;

    return this;
  }

  public withDateStarted(dateStarted: Date) {
    this._dateStarted = dateStarted;

    return this;
  }

  public withDateFinished(dateFinished?: Date) {
    this._dateFinished = dateFinished;

    return this;
  }

  public build() {
    return new Ride({
      id: this._id,
      userId: this._userId,
      scooterId: this._scooterId,
      startPrice: this._startPrice,
      perMinutePrice: this._perMinutePrice,
      dateStarted: this._dateStarted,
      dateFinished: this._dateFinished,
    });
  }
}

export { RideBuilder };

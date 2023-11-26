import * as crypto from "crypto";

import { Booking, BookingId } from "../../models/booking";
import { ScooterId } from "../../models/scooter";
import { UserId } from "../../models/user";
import { Builder } from "../types/builder";

class BookingBuilder implements Builder<Booking> {
  private _id: BookingId = crypto.randomUUID() as BookingId;
  private _userId: UserId = crypto.randomUUID() as UserId;
  private _scooterId: ScooterId = crypto.randomUUID() as ScooterId;
  private _dateStarted: Date = new Date("2023-01-01T15:00:00");
  private _dateFinished: Date = new Date("2023-01-0115:10:00");

  public withId(id: BookingId) {
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

  public withDateStarted(dateStarted: Date) {
    this._dateStarted = dateStarted;

    return this;
  }

  public withDateFinished(dateFinished: Date) {
    this._dateFinished = dateFinished;

    return this;
  }

  public build() {
    return new Booking({
      id: this._id,
      userId: this._userId,
      scooterId: this._scooterId,
      dateStarted: this._dateStarted,
      dateFinished: this._dateFinished,
    });
  }
}

export { BookingBuilder };

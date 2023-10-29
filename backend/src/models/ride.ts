import dayjs from "dayjs";

import { CreateRideModelDto } from "../dto/create-ride-model";
import { ValidationError } from "../errors/validation-error";
import { BaseModel } from "./base";
import { ScooterId } from "./scooter";
import { UserId } from "./user";

type RideId = string & { _opaque: "Ride" };

class Ride extends BaseModel<RideId> {
  private _userId: UserId;
  private _scooterId: ScooterId;
  private _startPrice: number;
  private _perMinutePrice: number;
  private _dateStarted: Date;
  private _dateFinished?: Date;

  public constructor(dto: CreateRideModelDto) {
    super(dto.id);

    this._userId = dto.userId;
    this._scooterId = dto.scooterId;
    this._startPrice = dto.startPrice;
    this._perMinutePrice = dto.perMinutePrice;
    this._dateStarted = dto.dateStarted;
    this._dateFinished = dto.dateFinished;
  }

  public get userId() {
    return this._userId;
  }

  public set userId(value: UserId) {
    this._userId = value;
  }

  public get scooterId() {
    return this._scooterId;
  }

  public set scooterId(value: ScooterId) {
    this._scooterId = value;
  }

  public get startPrice() {
    return this._startPrice;
  }

  public set startPrice(value: number) {
    if (value < 0) {
      throw new ValidationError("Цена не может быть отрицательной");
    }

    this._startPrice = value;
  }

  public get perMinutePrice() {
    return this._perMinutePrice;
  }

  public set perMinutePrice(value: number) {
    if (value < 0) {
      throw new ValidationError("Цена не может быть отрицательной");
    }

    this._perMinutePrice = value;
  }

  public get dateStarted() {
    return this._dateStarted;
  }

  public set dateStarted(value: Date) {
    if (this.dateFinished && value > this.dateFinished) {
      throw new ValidationError("Дата начала не может быть позже даты конца");
    }

    this._dateStarted = value;
  }

  public get dateFinished() {
    return this._dateFinished;
  }

  public set dateFinished(value: Date | undefined) {
    if (value && value < this.dateStarted) {
      throw new ValidationError("Дата конца не может быть раньше даты начала");
    }

    this._dateFinished = value;
  }

  public get duration() {
    const end = this.dateFinished ?? new Date();
    return dayjs(end).diff(this.dateStarted, "seconds");
  }

  public get totalPrice() {
    return (
      this.startPrice + Math.floor(this.duration / 60) * this.perMinutePrice
    );
  }

  public toJSON() {
    return {
      ...super.toJSON(),
      userId: this.userId,
      scooterId: this.scooterId,
      startPrice: this.startPrice,
      perMinutePrice: this.perMinutePrice,
      dateStarted: this.dateStarted,
      dateFinished: this.dateFinished ?? null,
      duration: this.duration,
      totalPrice: this.totalPrice,
    };
  }
}

export { Ride, RideId };

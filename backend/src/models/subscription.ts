import { CreateSubscriptionModelDto } from "../dto/create-subscription-model";
import { ValidationError } from "../errors/validation-error";
import { BaseModel } from "./base";

type SubscriptionId = string & { _opaque: "Subscription" };

class Subscription extends BaseModel<SubscriptionId> {
  private _title: string;
  private _price: number;
  private _duration: number;

  public constructor(dto: CreateSubscriptionModelDto) {
    super(dto.id);

    this._title = dto.title;
    this._price = dto.price;
    this._duration = dto.duration;
  }

  public get title() {
    return this._title;
  }

  public set title(value: string) {
    this._title = value;
  }

  public get price() {
    return this._price;
  }

  public set price(value: number) {
    if (value < 0) {
      throw new ValidationError("Цена не может быть отрицательной");
    }

    this._price = value;
  }

  public get duration() {
    return this._duration;
  }

  public set duration(value: number) {
    if (value < 0) {
      throw new ValidationError("Длительность не может быть отрицательной");
    }

    this._duration = value;
  }

  public toJSON() {
    return {
      ...super.toJSON(),
      title: this.title,
      price: this.price,
      duration: this.duration,
    };
  }
}

export { Subscription, SubscriptionId };

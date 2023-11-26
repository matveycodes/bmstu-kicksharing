import * as crypto from "crypto";

import { Subscription, SubscriptionId } from "../../models/subscription";
import { Builder } from "../types/builder";

class SubscriptionBuilder implements Builder<Subscription> {
  private _id: SubscriptionId = crypto.randomUUID() as SubscriptionId;
  private _title: string = "Subscription";
  private _price: number = crypto.randomInt(100, 100000);
  private _duration: number = crypto.randomInt(
    60 * 1000,
    31 * 24 * 60 * 60 * 1000
  );

  public withId(id: SubscriptionId) {
    this._id = id;

    return this;
  }

  public withTitle(title: string) {
    this._title = title;

    return this;
  }

  public withPrice(price: number) {
    this._price = price;

    return this;
  }

  public withDuration(duration: number) {
    this._duration = duration;

    return this;
  }

  public build() {
    return new Subscription({
      id: this._id,
      title: this._title,
      duration: this._duration,
      price: this._price,
    });
  }
}

export { SubscriptionBuilder };

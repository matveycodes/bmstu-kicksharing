import * as crypto from "crypto";

import { SubscriptionId } from "../../models/subscription";
import { UserId } from "../../models/user";
import { Purchase } from "../../vo/purchase";
import { Builder } from "../types/builder";

class PurchaseBuilder implements Builder<Purchase> {
  private _subscriptionId: SubscriptionId =
    crypto.randomUUID() as SubscriptionId;
  private _userId: UserId = crypto.randomUUID() as UserId;
  private _datePurchased: Date = new Date("2022-01-01T15:00:00");
  private _dateStarted: Date = new Date("2022-01-01T15:00:00");
  private _dateFinished: Date = new Date("2022-01-01T16:00:00");

  public withSubscriptionId(subscriptionId: SubscriptionId) {
    this._subscriptionId = subscriptionId;

    return this;
  }

  public withUserId(userId: UserId) {
    this._userId = userId;

    return this;
  }

  public withDatePurchased(datePurchased: Date) {
    this._datePurchased = datePurchased;

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
    return {
      subscriptionId: this._subscriptionId,
      userId: this._userId,
      datePurchased: this._datePurchased,
      dateStarted: this._dateStarted,
      dateFinished: this._dateFinished,
    };
  }
}

export { PurchaseBuilder };

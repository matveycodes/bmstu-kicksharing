import * as crypto from "crypto";

import { UserId } from "../../models/user";
import { AuthToken } from "../../vo/auth-token";
import { Builder } from "../types/builder";

class AuthTokenBuilder implements Builder<AuthToken> {
  private _userId: UserId = crypto.randomUUID() as UserId;
  private _value: string = crypto.randomUUID();
  private _dateExpired: Date = new Date(
    new Date().getTime() + 24 * 60 * 60 * 1000
  );

  public withUserId(userId: UserId) {
    this._userId = userId;

    return this;
  }

  public withValue(value: string) {
    this._value = value;

    return this;
  }

  public withDateExpired(dateExpired: Date) {
    this._dateExpired = dateExpired;

    return this;
  }

  public build() {
    return {
      userId: this._userId,
      value: this._value,
      dateExpired: this._dateExpired,
    };
  }
}

export { AuthTokenBuilder };

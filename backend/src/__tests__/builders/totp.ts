import * as crypto from "crypto";

import { Totp } from "../../vo/totp";
import { Builder } from "../types/builder";

class TotpBuilder implements Builder<Totp> {
  private _code: number = crypto.randomInt(1000, 9999 + 1);
  private _dateSent: Date = new Date();
  private _phone: string = `7${crypto.randomInt(1000000000, 9999999999 + 1)}`;
  private _signature: string = crypto.randomUUID();
  private _dateUsed?: Date = undefined;

  public withCode(code: number) {
    this._code = code;

    return this;
  }

  public withDateSent(dateSent: Date) {
    this._dateSent = dateSent;

    return this;
  }

  public withPhone(phone: string) {
    this._phone = phone;

    return this;
  }

  public withSignature(signature: string) {
    this._signature = signature;

    return this;
  }

  public withDateUsed(dateUsed?: Date) {
    this._dateUsed = dateUsed;

    return this;
  }

  public build() {
    return {
      code: this._code,
      phone: this._phone,
      signature: this._signature,
      dateSent: this._dateSent,
      dateUsed: this._dateUsed,
    };
  }
}

export { TotpBuilder };

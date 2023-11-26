import { NotFoundError } from "../../errors/not-found";
import { ITotpRepo } from "../../interfaces/totp-repo";
import { Totp } from "../../vo/totp";

class TotpMockRepo implements ITotpRepo {
  private _totp: Totp[] = [];

  public async getBySignature(signature: Totp["signature"]) {
    const totp = this._totp.find((t) => t.signature === signature);

    if (!totp) {
      throw new NotFoundError("Код не найден");
    }

    return totp;
  }

  public async save(totp: Totp) {
    this._totp.push(totp);
  }
}

export { TotpMockRepo };

import { Totp } from "../vo/totp";

interface ITotpRepo {
  save(totp: Totp): Promise<void>;
  getBySignature(signature: Totp["signature"]): Promise<Totp>;
}

export { ITotpRepo };

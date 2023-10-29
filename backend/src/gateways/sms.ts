import * as crypto from "crypto";

import { ISmsGateway } from "../interfaces/sms-gateway";

class SmsGateway implements ISmsGateway {
  public async send() {
    const delay = crypto.randomInt(500, 5000);
    await new Promise((resolve) => setTimeout(() => resolve(null), delay));
  }
}

export { SmsGateway };

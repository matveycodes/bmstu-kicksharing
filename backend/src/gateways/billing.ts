import * as crypto from "crypto";

import { IBillingGateway } from "../interfaces/billing-gateway";
import { UserId } from "../models/user";

class BillingGateway implements IBillingGateway {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  public async charge(userId: UserId, amount: number) {
    const delay = crypto.randomInt(500, 5000);
    await new Promise((resolve) => setTimeout(() => resolve(null), delay));
  }
}

export { BillingGateway };

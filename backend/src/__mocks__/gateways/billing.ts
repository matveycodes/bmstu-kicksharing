import { IBillingGateway } from "../../interfaces/billing-gateway";
import { UserId } from "../../models/user";

class BillingMockGateway implements IBillingGateway {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  public async charge(userId: UserId, amount: number) {}
}

export { BillingMockGateway };

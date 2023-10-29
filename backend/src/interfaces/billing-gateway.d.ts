import { UserId } from "../models/user";

interface IBillingGateway {
  charge(userId: UserId, amount: number): Promise<void>;
}

export { IBillingGateway };

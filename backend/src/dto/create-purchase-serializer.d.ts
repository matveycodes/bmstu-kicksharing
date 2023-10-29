import { ISubscriptionRepo } from "../interfaces/subscription-repo";
import { IUserRepo } from "../interfaces/user-repo";

interface CreatePurchaseSerializerDto {
  userRepo: IUserRepo;
  subscriptionRepo: ISubscriptionRepo;
}

export { CreatePurchaseSerializerDto };

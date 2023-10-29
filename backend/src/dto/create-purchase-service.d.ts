import { IBillingGateway } from "../interfaces/billing-gateway";
import { IPurchaseRepo } from "../interfaces/purchase-repo";
import { ISubscriptionRepo } from "../interfaces/subscription-repo";
import { IUserRepo } from "../interfaces/user-repo";

interface CreatePurchaseServiceDto {
  purchaseRepo: IPurchaseRepo;
  billingGateway: IBillingGateway;
  subscriptionRepo: ISubscriptionRepo;
  userRepo: IUserRepo;
}

export { CreatePurchaseServiceDto };

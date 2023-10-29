import { SubscriptionId } from "../models/subscription";
import { UserId } from "../models/user";

interface Purchase {
  subscriptionId: SubscriptionId;
  userId: UserId;
  datePurchased: Date;
  dateStarted: Date;
  dateFinished: Date;
}

export { Purchase };

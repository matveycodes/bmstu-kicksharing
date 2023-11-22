import { Subscription } from "../../subscriptions";
import { User } from "../../user";

interface Purchase {
  dateFinished: string;
  datePurchased: string;
  dateStarted: string;
  subscription: Subscription;
  user: User;
}

export { Purchase };

import { Subscription } from "./subscription";

interface PurchasedSubscription {
  dateStarted: string;
  dateFinished: string;
  datePurchased: string;
  subscription: Subscription;
}

export { PurchasedSubscription };

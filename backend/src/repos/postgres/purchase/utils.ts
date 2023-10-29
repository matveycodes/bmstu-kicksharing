import { SubscriptionId } from "../../../models/subscription";
import { UserId } from "../../../models/user";
import { Purchase } from "../../../vo/purchase";
import { PurchaseRow } from "./types";

const parsePurchaseRow = (row: PurchaseRow): Purchase => {
  return {
    userId: row.user_id as UserId,
    subscriptionId: row.subscription_id as SubscriptionId,
    datePurchased: new Date(row.date_purchased),
    dateStarted: new Date(row.date_started),
    dateFinished: new Date(row.date_finished),
  } as Purchase;
};

export { parsePurchaseRow };

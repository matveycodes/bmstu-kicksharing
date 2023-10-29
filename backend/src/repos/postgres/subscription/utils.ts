import { Subscription, SubscriptionId } from "../../../models/subscription";
import { SubscriptionRow } from "./types";

const parseSubscriptionRow = (row: SubscriptionRow): Subscription => {
  return new Subscription({
    id: row.id as SubscriptionId,
    title: row.title,
    price: row.price,
    duration: row.duration,
  });
};

export { parseSubscriptionRow };

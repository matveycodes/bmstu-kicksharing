import { PaginatedResponse, Response } from "features/api";

import { Subscription } from "./subscription";
import { PurchasedSubscription } from "./purchased-subscription";

type GetSubscriptionsResponse = PaginatedResponse<Subscription>;

type GetActiveSubscriptionsResponse = PaginatedResponse<PurchasedSubscription>;

type GetFinishedSubscriptionsResponse = Response<PurchasedSubscription[]>;

export {
  GetActiveSubscriptionsResponse,
  GetSubscriptionsResponse,
  GetFinishedSubscriptionsResponse,
};

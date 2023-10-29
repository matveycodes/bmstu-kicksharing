import { client, RequestConfig } from "features/api";

import {
  GetActiveSubscriptionsResponse,
  GetFinishedSubscriptionsResponse,
  GetSubscriptionsResponse,
} from "../types/api";
import { Subscription } from "../types/subscription";
import { PurchasedSubscription } from "../types/purchased-subscription";

const getSubscriptions = async (
  config?: Omit<RequestConfig, "params">
): Promise<Subscription[]> => {
  const { data: initialData } = await client.get<GetSubscriptionsResponse>(
    "/subscriptions/",
    { params: { pageSize: 1 }, ...config }
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetSubscriptionsResponse>(
    "/subscriptions/",
    { params: { pageSize: initialData.totalCount }, ...config }
  );

  return data.results;
};

const getActiveSubscriptions = async (
  config?: Omit<RequestConfig, "params">
): Promise<PurchasedSubscription[]> => {
  const { data: initialData } =
    await client.get<GetActiveSubscriptionsResponse>(
      "/users/current/purchases/",
      { params: { pageSize: 1 }, ...config }
    );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetActiveSubscriptionsResponse>(
    "/users/current/purchases/",
    { params: { pageSize: initialData.totalCount }, ...config }
  );

  return data.results;
};

const getFinishedSubscriptions = async (
  config?: Omit<RequestConfig, "params">
): Promise<PurchasedSubscription[]> => {
  const { data } = await client.get<GetFinishedSubscriptionsResponse>(
    "/subscriptions/finished/",
    config
  );

  return data;
};

const purchaseSubscription = async (id: string) => {
  await client.post(`/purchases/`, { subscriptionId: id });
};

export {
  getSubscriptions,
  purchaseSubscription,
  getActiveSubscriptions,
  getFinishedSubscriptions,
};

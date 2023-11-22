import { client, RequestConfig } from "../../api";
import { GetSubscriptionsParams, GetSubscriptionsResponse } from "../types/api";
import { Subscription } from "../types/subscription";

const getSubscriptionsPaginated = async (
  params?: GetSubscriptionsParams,
  config?: Omit<RequestConfig, "params">
): Promise<GetSubscriptionsResponse> => {
  const { data } = await client.get<GetSubscriptionsResponse>(
    "/subscriptions/",
    { params, ...config }
  );

  return data;
};

const getSubscriptions = async (
  params?: GetSubscriptionsParams,
  config?: Omit<RequestConfig, "params">
): Promise<Subscription[]> => {
  const initialData = await getSubscriptionsPaginated(
    { ...params, pageSize: 1 },
    config
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const data = await getSubscriptionsPaginated(
    { ...params, pageSize: initialData.totalCount },
    config
  );

  return data.results;
};

export { getSubscriptions };

import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getSubscriptions } from "../api/subscriptions";
import { GetSubscriptionsParams } from "../types/api";
import { Subscription } from "../types/subscription";

const useSubscriptions = (
  params?: GetSubscriptionsParams,
  options?: Omit<UseQueryOptions<Subscription[]>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["subscription", "list", params],
    queryFn: ({ signal }) => getSubscriptions(params, { signal }),
    ...options,
  });
};

export { useSubscriptions };

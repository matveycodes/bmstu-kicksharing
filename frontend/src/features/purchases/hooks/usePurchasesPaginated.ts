import { useInfiniteQuery } from "@tanstack/react-query";

import { getPurchasesPaginated } from "../api/purchases";
import { GetPurchasesParams } from "../types/api";

const usePurchasesPaginated = (params?: GetPurchasesParams) => {
  return useInfiniteQuery({
    queryKey: ["purchase", "list", params],
    queryFn: ({ pageParam, signal }) =>
      getPurchasesPaginated(
        { ...params, page: pageParam as number },
        { signal }
      ),
    initialPageParam: 1,
    getNextPageParam: (lastPage) => lastPage.nextPage,
  });
};

export { usePurchasesPaginated };

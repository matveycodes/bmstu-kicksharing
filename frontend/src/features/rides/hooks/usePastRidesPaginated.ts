import { useInfiniteQuery } from "@tanstack/react-query";

import { getPastRidesPaginated } from "../api/rides";
import { GetRidesParams } from "../types/api";

const usePastRidesPaginated = (params?: GetRidesParams) => {
  return useInfiniteQuery({
    queryKey: ["ride", "list", "past", params],
    queryFn: ({ pageParam, signal }) =>
      getPastRidesPaginated(
        { ...params, page: pageParam as number },
        { signal }
      ),
    initialPageParam: 1,
    getNextPageParam: (lastPage) => lastPage.nextPage,
  });
};

export { usePastRidesPaginated };

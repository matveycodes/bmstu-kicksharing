import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { countRides } from "../api/rides";

const useRidesCount = (
  options?: Omit<UseQueryOptions<number>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["ride", "list", "count"],
    queryFn: ({ signal }) => countRides({ signal }),
    ...options,
  });
};

export { useRidesCount };

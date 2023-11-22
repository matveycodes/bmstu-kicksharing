import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getRides } from "../api/rides";
import { GetRidesParams } from "../types/api";
import { Ride } from "../types/ride";

const useRides = (
  params?: GetRidesParams,
  options?: Omit<UseQueryOptions<Ride[]>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["ride", "list", params],
    queryFn: ({ signal }) => getRides(params, { signal }),
    ...options,
  });
};

export { useRides };

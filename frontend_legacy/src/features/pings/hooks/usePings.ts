import { useQuery, UseQueryOptions } from "features/api";

import { getPings } from "../api/pings";

import { GetPingsRequest } from "../types/api";
import { Ping } from "../types/ping";

type UsePingsOptions = Omit<UseQueryOptions<Ping[]>, "queryKey" | "queryFn">;

const usePings = (params: GetPingsRequest, options?: UsePingsOptions) => {
  return useQuery({
    queryKey: ["ping", "list", params],
    queryFn: ({ signal }) => getPings(params, { signal }),
    ...options,
  });
};

export { usePings };

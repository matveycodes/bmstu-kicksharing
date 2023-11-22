import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getPings } from "../api/pings";
import { GetPingsParams } from "../types/api";
import { Ping } from "../types/ping";

const usePings = (
  params?: GetPingsParams,
  options?: Omit<UseQueryOptions<Ping[]>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["ping", "list", params],
    queryFn: ({ signal }) => getPings(params, { signal }),
    ...options,
  });
};

export { usePings };

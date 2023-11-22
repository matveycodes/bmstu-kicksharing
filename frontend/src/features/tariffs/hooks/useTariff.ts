import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getTariff } from "../api/tariffs";
import { Tariff } from "../types/tariff";

const useTariff = (
  options?: Omit<UseQueryOptions<Tariff>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["tariff"],
    queryFn: ({ signal }) => getTariff({ signal }),
    ...options,
  });
};

export { useTariff };

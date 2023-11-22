import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getRestrictedZones } from "../api/restricted-zones";
import { GetRestrictedZonesParams } from "../types/api";
import { RestrictedZone } from "../types/restricted-zone";

const useRestrictedZones = (
  params?: GetRestrictedZonesParams,
  options?: Omit<UseQueryOptions<RestrictedZone[]>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["restricted-zone", "list", params],
    queryFn: ({ signal }) => getRestrictedZones(params, { signal }),
    ...options,
  });
};

export { useRestrictedZones };

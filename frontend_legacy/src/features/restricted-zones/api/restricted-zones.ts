import { client, RequestConfig } from "features/api";

import { GetRestrictedZonesResponse } from "../types/api";
import { RestrictedZone } from "../types/restricted-zone";

const getRestrictedZones = async (
  config?: Omit<RequestConfig, "params">
): Promise<RestrictedZone[]> => {
  const { data: initialData } = await client.get<GetRestrictedZonesResponse>(
    "/restricted-zones/",
    { params: { pageSize: 1 }, ...config }
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetRestrictedZonesResponse>(
    "/restricted-zones/",
    { params: { pageSize: initialData.totalCount }, ...config }
  );

  return data.results;
};

export { getRestrictedZones };

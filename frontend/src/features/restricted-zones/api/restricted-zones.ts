import { client, RequestConfig } from "../../api";
import {
  GetRestrictedZonesParams,
  GetRestrictedZonesResponse,
} from "../types/api";
import { RestrictedZone } from "../types/restricted-zone";

const getRestrictedZonesPaginated = async (
  params?: GetRestrictedZonesParams,
  config?: Omit<RequestConfig, "params">,
): Promise<GetRestrictedZonesResponse> => {
  const { data } = await client.get<GetRestrictedZonesResponse>(
    "/restricted-zones/",
    { params, ...config },
  );

  return data;
};

const getRestrictedZones = async (
  params?: GetRestrictedZonesParams,
  config?: Omit<RequestConfig, "params">,
): Promise<RestrictedZone[]> => {
  const initialData = await getRestrictedZonesPaginated(
    { ...params, pageSize: 1 },
    config,
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const data = await getRestrictedZonesPaginated(
    { ...params, pageSize: initialData.totalCount },
    config,
  );

  return data.results;
};

export { getRestrictedZones };

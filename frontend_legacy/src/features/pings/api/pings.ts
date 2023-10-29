import { client, RequestConfig } from "features/api";

import { GetPingsRequest, GetPingsResponse } from "../types/api";
import { Ping } from "../types/ping";

const getPings = async (
  params: GetPingsRequest,
  config?: Omit<RequestConfig, "params">
): Promise<Ping[]> => {
  const { data: initialData } = await client.get<GetPingsResponse>("/pings/", {
    params: { ...params, pageSize: 1 },
    ...config,
  });

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetPingsResponse>("/pings/", {
    params: { ...params, pageSize: initialData.totalCount },
    ...config,
  });

  return data.results;
};

export { getPings };

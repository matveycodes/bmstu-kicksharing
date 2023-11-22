import { client, RequestConfig } from "../../api";
import { GetPingsParams, GetPingsResponse } from "../types/api";

const getPingsPaginated = async (
  params?: GetPingsParams,
  config?: Omit<RequestConfig, "params">,
) => {
  const { data } = await client.get<GetPingsResponse>("/pings/", {
    params,
    ...config,
  });

  return data;
};

const getPings = async (
  params?: GetPingsParams,
  config?: Omit<RequestConfig, "params">,
) => {
  const initialData = await getPingsPaginated(
    { ...params, pageSize: 1 },
    config,
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const data = await getPingsPaginated(
    { ...params, pageSize: initialData.totalCount },
    config,
  );

  return data.results;
};

export { getPings };

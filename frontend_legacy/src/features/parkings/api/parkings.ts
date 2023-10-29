import { client, RequestConfig } from "features/api";

import { GetParkingsRequest, GetParkingsResponse } from "../types/api";
import { Parking } from "../types/parking";

const getParkings = async (
  params: GetParkingsRequest,
  config?: Omit<RequestConfig, "params">
): Promise<Parking[]> => {
  const { data: initialData } = await client.get<GetParkingsResponse>(
    "/parkings/",
    { params: { ...params, pageSize: 1 }, ...config }
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetParkingsResponse>("/parkings/", {
    params: { ...params, pageSize: initialData.totalCount },
    ...config,
  });

  return data.results;
};

export { getParkings };

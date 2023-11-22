import { client, RequestConfig } from "../../api";
import { GetParkingsParams, GetParkingsResponse } from "../types/api";
import { Parking } from "../types/parking";

const getParkingsPaginated = async (
  params?: GetParkingsParams,
  config?: Omit<RequestConfig, "params">,
): Promise<GetParkingsResponse> => {
  const { data } = await client.get<GetParkingsResponse>("/parkings/", {
    params,
    ...config,
  });

  return data;
};

const getParkings = async (
  params?: GetParkingsParams,
  config?: Omit<RequestConfig, "params">,
): Promise<Parking[]> => {
  const initialData = await getParkingsPaginated(
    { ...params, pageSize: 1 },
    config,
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const data = await getParkingsPaginated(
    { ...params, pageSize: initialData.totalCount },
    config,
  );

  return data.results;
};

export { getParkings };

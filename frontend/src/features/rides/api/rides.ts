import { client, RequestConfig } from "../../api";
import { GetRidesParams, GetRidesResponse } from "../types/api";
import { Ride } from "../types/ride";

const startRide = async (scooterId: string) => {
  await client.post("/rides/", { scooterId });
};

const getRidesPaginated = async (
  params?: GetRidesParams,
  config?: Omit<RequestConfig, "params">,
): Promise<GetRidesResponse> => {
  const { data } = await client.get<GetRidesResponse>("/users/current/rides/", {
    params,
    ...config,
  });

  return data;
};

const getPastRidesPaginated = async (
  params?: GetRidesParams,
  config?: Omit<RequestConfig, "params">,
) => {
  const { data } = await client.get("/users/current/history", {
    params,
    ...config,
  });

  return data;
};

const countRides = async (config?: Omit<RequestConfig, "params">) => {
  const data = await getRidesPaginated({ pageSize: 1 }, config);
  return data.totalCount;
};

const getRides = async (
  params?: GetRidesParams,
  config?: Omit<RequestConfig, "params">,
): Promise<Ride[]> => {
  const initialData = await getRidesPaginated(
    { ...params, pageSize: 10 },
    config,
  );

  if (initialData.totalCount <= 10) {
    return initialData.results;
  }

  const data = await getRidesPaginated(
    { ...params, pageSize: initialData.totalCount },
    config,
  );

  return data.results;
};

const finishRide = async (rideId: string) => {
  await client.post("/history/", { rideId });
};

export { countRides, finishRide, getPastRidesPaginated, getRides, startRide };

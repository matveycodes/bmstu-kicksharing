import { client, RequestConfig } from "features/api";

import { GetActiveRentalsResponse, StartRentalBody } from "../types/api";
import { Rental } from "../types/rental";

const startRental = async (body: StartRentalBody) => {
  await client.post("/rides/", body);
};

const getActiveRentals = async (
  config?: Omit<RequestConfig, "params">
): Promise<Rental[]> => {
  const { data: initialData } = await client.get<GetActiveRentalsResponse>(
    "/users/current/rides/",
    { params: { isActive: true, pageSize: 1 }, ...config }
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetActiveRentalsResponse>(
    "/users/current/rides/",
    { params: { isActive: true, pageSize: initialData.totalCount }, ...config }
  );

  return data.results;
};

const getRentalsHistory = async (
  config?: Omit<RequestConfig, "params">
): Promise<Rental[]> => {
  const { data: initialData } = await client.get<GetActiveRentalsResponse>(
    "/users/current/history/",
    { params: { pageSize: 1 }, ...config }
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetActiveRentalsResponse>(
    "/users/current/history/",
    { params: { pageSize: initialData.totalCount }, ...config }
  );

  return data.results;
};

const finishRental = async (id: Rental["id"]) => {
  await client.post(`/history/`, { rideId: id });
};

export { startRental, getActiveRentals, finishRental, getRentalsHistory };

import { client, RequestConfig } from "features/api";

import { CreateBookingBody, GetActiveBookingsResponse } from "../types/api";
import { Booking } from "../types/booking";

const getActiveBookings = async (
  config?: Omit<RequestConfig, "params">
): Promise<Booking[]> => {
  const { data: initialData } = await client.get<GetActiveBookingsResponse>(
    "/users/current/bookings/",
    { params: { isActive: true, pageSize: 1 }, ...config }
  );

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetActiveBookingsResponse>(
    "/users/current/bookings/",
    { params: { isActive: true, pageSize: initialData.totalCount }, ...config }
  );

  return data.results;
};

const createBooking = async (body: CreateBookingBody) => {
  await client.post("/bookings/", body);
};

const cancelBooking = async (id: Booking["id"]) => {
  await client.delete(`/bookings/${id}/`);
};

export { createBooking, getActiveBookings, cancelBooking };

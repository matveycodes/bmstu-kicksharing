import { client, RequestConfig } from "../../api";
import { GetBookingsParams, GetBookingsResponse } from "../types/api";
import { Booking } from "../types/booking";

const createBooking = async (scooterId: string) => {
  await client.post("/bookings/", { scooterId });
};

const getBookingsPaginated = async (
  params?: GetBookingsParams,
  config?: Omit<RequestConfig, "params">,
): Promise<GetBookingsResponse> => {
  const { data } = await client.get<GetBookingsResponse>(
    "/users/current/bookings/",
    { params, ...config },
  );

  return data;
};

const countBookings = async (config?: Omit<RequestConfig, "params">) => {
  const data = await getBookingsPaginated({ pageSize: 1 }, config);
  return data.totalCount;
};

const getBookings = async (
  params?: GetBookingsParams,
  config?: Omit<RequestConfig, "params">,
): Promise<Booking[]> => {
  const initialData = await getBookingsPaginated(
    { ...params, pageSize: 10 },
    config,
  );

  if (initialData.totalCount <= 10) {
    return initialData.results;
  }

  const data = await getBookingsPaginated(
    { ...params, pageSize: initialData.totalCount },
    config,
  );

  return data.results;
};

const cancelBooking = async (bookingId: string) => {
  await client.delete(`/bookings/${bookingId}/`);
};

export { cancelBooking, countBookings, createBooking, getBookings };

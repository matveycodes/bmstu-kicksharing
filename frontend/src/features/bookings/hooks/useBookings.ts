import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getBookings } from "../api/bookings";
import { GetBookingsParams } from "../types/api";
import { Booking } from "../types/booking";

const useBookings = (
  params?: GetBookingsParams,
  options?: Omit<UseQueryOptions<Booking[]>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["booking", "list", params],
    queryFn: ({ signal }) => getBookings(params, { signal }),
    ...options,
  });
};

export { useBookings };

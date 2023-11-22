import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { countBookings } from "../api/bookings";

const useBookingsCount = (
  options?: Omit<UseQueryOptions<number>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["booking", "list", "count"],
    queryFn: ({ signal }) => countBookings({ signal }),
    ...options,
  });
};

export { useBookingsCount };

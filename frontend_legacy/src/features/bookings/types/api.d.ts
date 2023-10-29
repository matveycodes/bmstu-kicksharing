import { PaginatedResponse } from "features/api";

import { Booking } from "./booking";

type GetActiveBookingsResponse = PaginatedResponse<Booking>;

interface CreateBookingBody {
  scooterId: string;
}

export { CreateBookingBody, GetActiveBookingsResponse };

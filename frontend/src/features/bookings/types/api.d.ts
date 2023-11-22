import { PaginatedResponse, PaginationParams } from "../../api";
import { Booking } from "./booking";

type GetBookingsParams = PaginationParams;

type GetBookingsResponse = PaginatedResponse<Booking>;

export { GetBookingsParams, GetBookingsResponse };

import { Booking, BookingId } from "../models/booking";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IBookingService {
  create(scooterId: ScooterId, userId: UserId): Promise<void>;
  cancel(id: BookingId): Promise<void>;
  getById(id: BookingId): Promise<Booking>;
  getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getActivePaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getFinishedPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
}

export { IBookingService };

import { Booking, BookingId } from "../models/booking";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IBookingRepo {
  nextId(): BookingId;
  save(booking: Booking): Promise<void>;
  getById(id: BookingId): Promise<Booking>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getActivePaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getFinishedPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getActiveByUserId(userId: UserId): Promise<Booking[]>;
  getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Booking>>;
  getActiveByScooterId(scooterId: ScooterId): Promise<Booking[]>;
  isScooterTaken(scooterId: ScooterId): Promise<boolean>;
}

export { IBookingRepo };

import { Ride, RideId } from "../models/ride";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IRideRepo {
  nextId(): RideId;
  save(ride: Ride): Promise<void>;
  getById(id: RideId): Promise<Ride>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getActivePaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getFinishedPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getActiveByScooterId(scooterId: ScooterId): Promise<Ride[]>;
  getActiveByUserId(userId: UserId): Promise<Ride[]>;
  isScooterTaken(scooterId: ScooterId): Promise<boolean>;
  getAllByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getFinishedByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
}

export { IRideRepo };

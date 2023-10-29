import { Ride, RideId } from "../models/ride";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IRideService {
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getActivePaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getFinishedPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getById(id: RideId): Promise<Ride>;
  getAllByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  getFinishedByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ride>>;
  create(scooterId: ScooterId, userId: UserId): Promise<void>;
  finish(id: RideId): Promise<void>;
  save(ride: Ride): Promise<void>;
}

export { IRideService };

import { Parking, ParkingId } from "../models/parking";
import { Bounds } from "../vo/bounds";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IParkingService {
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Parking>>;
  getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Parking>>;
  getById(id: ParkingId): Promise<Parking>;
}

export { IParkingService };

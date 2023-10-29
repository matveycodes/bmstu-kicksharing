import { Parking, ParkingId } from "../models/parking";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IParkingService {
  getAll(pagination: PaginationRequest): Promise<PaginatedResponse<Parking>>;
  get(id: ParkingId): Promise<Parking>;
}

export { IParkingService };

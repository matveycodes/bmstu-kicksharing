import { Parking, ParkingId } from "../models/parking";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IParkingRepo {
  nextId(): ParkingId;
  getAll(pagination: PaginationRequest): Promise<PaginatedResponse<Parking>>;
  get(id: ParkingId): Promise<Parking>;
}

export { IParkingRepo };

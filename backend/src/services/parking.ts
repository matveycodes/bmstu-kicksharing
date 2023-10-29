import { CreateParkingServiceDto } from "../dto/create-parking-service";
import { IParkingRepo } from "../interfaces/parking-repo";
import { IParkingService } from "../interfaces/parking-service";
import { ParkingId } from "../models/parking";
import { Bounds } from "../vo/bounds";
import { PaginationRequest } from "../vo/pagination";

class ParkingService implements IParkingService {
  private _parkingRepo: IParkingRepo;

  public constructor(dto: CreateParkingServiceDto) {
    this._parkingRepo = dto.parkingRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._parkingRepo.getAllPaginated(pagination);
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    return this._parkingRepo.getWithinBoundsPaginated(bounds, pagination);
  }

  public async getById(id: ParkingId) {
    return this._parkingRepo.getById(id);
  }
}

export { ParkingService };

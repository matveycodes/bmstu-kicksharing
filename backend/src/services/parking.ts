import { CreateParkingServiceDto } from "../dto/create-parking-service";
import { IParkingRepo } from "../interfaces/parking-repo";
import { IParkingService } from "../interfaces/parking-service";
import { ParkingId } from "../models/parking";
import { PaginationRequest } from "../vo/pagination";

class ParkingService implements IParkingService {
  private _parkingRepo: IParkingRepo;

  public constructor(dto: CreateParkingServiceDto) {
    this._parkingRepo = dto.parkingRepo;
  }

  public async getAll(pagination: PaginationRequest) {
    return this._parkingRepo.getAll(pagination);
  }

  public async get(id: ParkingId) {
    return this._parkingRepo.get(id);
  }
}

export { ParkingService };

import { CreatePingServiceDto } from "../dto/create-ping-service";
import { IPingRepo } from "../interfaces/ping-repo";
import { IPingService } from "../interfaces/ping-service";
import { Bounds } from "../vo/bounds";
import { PaginationRequest } from "../vo/pagination";

class PingService implements IPingService {
  private _pingRepo: IPingRepo;

  public constructor(dto: CreatePingServiceDto) {
    this._pingRepo = dto.pingRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._pingRepo.getAllPaginated(pagination);
  }

  public async getDischargedPaginated(pagination: PaginationRequest) {
    return this._pingRepo.getDischargedPaginated(pagination);
  }

  public async getRentablePaginated(pagination: PaginationRequest) {
    return this._pingRepo.getRentablePaginated(pagination);
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    return this._pingRepo.getWithinBoundsPaginated(bounds, pagination);
  }

  public async getDischargedWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    return this._pingRepo.getDischargedWithinBoundsPaginated(
      bounds,
      pagination
    );
  }

  public async getRentableWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    return this._pingRepo.getRentableWithinBoundsPaginated(bounds, pagination);
  }
}

export { PingService };

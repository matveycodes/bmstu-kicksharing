import { CreateRestrictedZoneServiceDto } from "../dto/create-restricted-zone-service";
import { IRestrictedZoneRepo } from "../interfaces/restricted-zone-repo";
import { IRestrictedZoneService } from "../interfaces/restricted-zone-service";
import { RestrictedZoneId } from "../models/restricted-zone";
import { Bounds } from "../vo/bounds";
import { PaginationRequest } from "../vo/pagination";

class RestrictedZoneService implements IRestrictedZoneService {
  private _restrictedZoneRepo: IRestrictedZoneRepo;

  public constructor(dto: CreateRestrictedZoneServiceDto) {
    this._restrictedZoneRepo = dto.restrictedZoneRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._restrictedZoneRepo.getAllPaginated(pagination);
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    return this._restrictedZoneRepo.getWithinBoundsPaginated(
      bounds,
      pagination
    );
  }

  public async getById(id: RestrictedZoneId) {
    return this._restrictedZoneRepo.getById(id);
  }
}

export { RestrictedZoneService };

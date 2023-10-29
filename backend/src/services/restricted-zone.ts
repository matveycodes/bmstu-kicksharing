import { CreateRestrictedZoneServiceDto } from "../dto/create-restricted-zone-service";
import { IRestrictedZoneRepo } from "../interfaces/restricted-zone-repo";
import { IRestrictedZoneService } from "../interfaces/restricted-zone-service";
import { RestrictedZoneId } from "../models/restricted-zone";
import { PaginationRequest } from "../vo/pagination";

class RestrictedZoneService implements IRestrictedZoneService {
  private _restrictedZoneRepo: IRestrictedZoneRepo;

  public constructor(dto: CreateRestrictedZoneServiceDto) {
    this._restrictedZoneRepo = dto.restrictedZoneRepo;
  }

  public async getAll(pagination: PaginationRequest) {
    return this._restrictedZoneRepo.getAll(pagination);
  }

  public async get(id: RestrictedZoneId) {
    return this._restrictedZoneRepo.get(id);
  }
}

export { RestrictedZoneService };

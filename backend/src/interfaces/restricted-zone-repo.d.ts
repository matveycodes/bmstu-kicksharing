import { RestrictedZone, RestrictedZoneId } from "../models/restricted-zone";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IRestrictedZoneRepo {
  nextId(): RestrictedZoneId;
  getAll(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<RestrictedZone>>;
  get(id: RestrictedZoneId): Promise<RestrictedZone>;
}

export { IRestrictedZoneRepo };

import { RestrictedZone, RestrictedZoneId } from "../models/restricted-zone";
import { Bounds } from "../vo/bounds";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IRestrictedZoneRepo {
  nextId(): RestrictedZoneId;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<RestrictedZone>>;
  getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<RestrictedZone>>;
  getById(id: RestrictedZoneId): Promise<RestrictedZone>;
}

export { IRestrictedZoneRepo };

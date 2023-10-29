import { Bounds } from "../vo/bounds";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";
import { Ping } from "../vo/ping";

interface IPingService {
  getRentablePaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ping>>;
  getRentableWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ping>>;
  getDischargedPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ping>>;
  getDischargedWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ping>>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ping>>;
  getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Ping>>;
}

export { IPingService };

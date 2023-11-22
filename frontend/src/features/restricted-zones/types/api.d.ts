import { GPSBounds } from "../../../types/gps-bounds";
import { PaginatedResponse, PaginationParams } from "../../api";
import { RestrictedZone } from "./restricted-zone";

type GetRestrictedZonesParams =
  | PaginationParams
  | (PaginationParams & GPSBounds);

type GetRestrictedZonesResponse = PaginatedResponse<RestrictedZone>;

export { GetRestrictedZonesParams, GetRestrictedZonesResponse };

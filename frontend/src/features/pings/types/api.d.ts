import { GPSBounds } from "../../../types/gps-bounds";
import { PaginatedResponse, PaginationParams } from "../../api";
import { Ping } from "./ping";

type GetPingsParams = PaginationParams | (PaginationParams & GPSBounds);

type GetPingsResponse = PaginatedResponse<Ping>;

export { GetPingsParams, GetPingsResponse };

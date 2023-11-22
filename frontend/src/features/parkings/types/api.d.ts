import { GPSBounds } from "../../../types/gps-bounds";
import { PaginatedResponse, PaginationParams } from "../../api";
import { Parking } from "./parking";

type GetParkingsParams = PaginationParams | (PaginationParams & GPSBounds);

type GetParkingsResponse = PaginatedResponse<Parking>;

export { GetParkingsParams, GetParkingsResponse };

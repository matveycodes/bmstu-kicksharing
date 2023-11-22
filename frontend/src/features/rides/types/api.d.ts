import { PaginatedResponse, PaginationParams } from "../../api";
import { Ride } from "./ride";

type GetRidesParams = PaginationParams;

type GetRidesResponse = PaginatedResponse<Ride>;

export { GetRidesParams, GetRidesResponse };

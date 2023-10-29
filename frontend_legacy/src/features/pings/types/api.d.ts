import { PaginatedResponse } from "features/api";

import { Ping } from "./ping";

type GetPingsResponse = PaginatedResponse<Ping>;

interface GetPingsRequest {
  minLatitude: number;
  minLongitude: number;
  maxLatitude: number;
  maxLongitude: number;
}

export { GetPingsResponse, GetPingsRequest };

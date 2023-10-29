import { PaginatedResponse } from "features/api";

import { Parking } from "./parking";

interface GetParkingsRequest {
  minLatitude: number;
  minLongitude: number;
  maxLatitude: number;
  maxLongitude: number;
}

type GetParkingsResponse = PaginatedResponse<Parking>;

export { GetParkingsRequest, GetParkingsResponse };

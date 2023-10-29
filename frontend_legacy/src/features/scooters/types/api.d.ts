import { Response } from "features/api";

import { Scooter } from "./scooter";

interface GetRentableScootersRequest {
  minLatitude: number;
  minLongitude: number;
  maxLatitude: number;
  maxLongitude: number;
}

type GetDischargedScootersRequest = GetRentableScootersRequest;

type GetRentableScootersResponse = Response<Scooter[]>;

type GetDischargedScootersResponse = Response<Scooter[]>;

export {
  GetRentableScootersResponse,
  GetRentableScootersRequest,
  GetDischargedScootersResponse,
  GetDischargedScootersRequest,
};

import isPointInPolygon from "point-in-polygon";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { NotFoundError } from "../../errors/not-found";
import { IParkingRepo } from "../../interfaces/parking-repo";
import { Parking, ParkingId } from "../../models/parking";
import { Bounds } from "../../vo/bounds";
import { PaginationRequest } from "../../vo/pagination";

class ParkingMockRepo implements IParkingRepo {
  private _parkings: Parking[] = [];

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._parkings, pagination);
  }

  public async getById(id: ParkingId) {
    const parking = this._parkings.find((p) => p.id === id);

    if (!parking) {
      throw new NotFoundError("Парковка не найдена");
    }

    return parking;
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    const parkings = this._parkings.filter((p) =>
      isPointInPolygon(
        [p.location.longitude, p.location.latitude],
        [
          [bounds.minLatitude, bounds.minLongitude],
          [bounds.minLatitude, bounds.maxLongitude],
          [bounds.maxLatitude, bounds.minLongitude],
          [bounds.maxLatitude, bounds.maxLongitude],
        ]
      )
    );

    return createPaginatedResponse(parkings, pagination);
  }

  public nextId() {
    return crypto.randomUUID() as ParkingId;
  }

  public async save(parking: Parking) {
    this._parkings.push(parking);
  }
}

export { ParkingMockRepo };

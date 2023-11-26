import orderBy from "lodash/orderBy";
import uniqBy from "lodash/uniqBy";
import isPointInPolygon from "point-in-polygon";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { IBookingRepo } from "../../interfaces/booking-repo";
import { IPingRepo } from "../../interfaces/ping-repo";
import { IRideRepo } from "../../interfaces/ride-repo";
import { IScooterRepo } from "../../interfaces/scooter-repo";
import { ScooterId } from "../../models/scooter";
import { Bounds } from "../../vo/bounds";
import { PaginationRequest } from "../../vo/pagination";
import { Ping } from "../../vo/ping";

class PingMockRepo implements IPingRepo {
  private _bookingRepo: IBookingRepo;
  private _rideRepo: IRideRepo;
  private _scooterRepo: IScooterRepo;

  private _pings: Ping[] = [];

  public constructor({
    bookingRepo,
    rideRepo,
    scooterRepo,
  }: {
    bookingRepo: IBookingRepo;
    rideRepo: IRideRepo;
    scooterRepo: IScooterRepo;
  }) {
    this._bookingRepo = bookingRepo;
    this._rideRepo = rideRepo;
    this._scooterRepo = scooterRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._pings, pagination);
  }

  private async getDischarged() {
    const result: Ping[] = [];

    for (const ping of this._pings) {
      if (ping.batteryLevel > 0) {
        continue;
      }

      const scooter = await this._scooterRepo.getById(ping.scooterId);
      if (!scooter.isEnabled) {
        continue;
      }

      result.push(ping);
    }

    return uniqBy(result, "scooterId");
  }

  public async getDischargedPaginated(pagination: PaginationRequest) {
    const discharged = await this.getDischarged();
    return createPaginatedResponse(discharged, pagination);
  }

  private getWithinBounds(pings: Ping[], bounds: Bounds) {
    return pings.filter((p) => {
      return isPointInPolygon(
        [p.location.longitude, p.location.latitude],
        [
          [bounds.minLatitude, bounds.minLongitude],
          [bounds.minLatitude, bounds.maxLongitude],
          [bounds.maxLatitude, bounds.minLongitude],
          [bounds.maxLatitude, bounds.maxLongitude],
        ]
      );
    });
  }

  public async getDischargedWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    const discharged = await this.getDischarged();
    const withinBounds = this.getWithinBounds(discharged, bounds);
    return createPaginatedResponse(withinBounds, pagination);
  }

  public async getLatestByScooterId(scooterId: ScooterId) {
    return this._pings.find((p) => p.scooterId === scooterId) ?? null;
  }

  private async getRentable() {
    const results: Ping[] = [];

    for (const ping of this._pings) {
      if (ping.batteryLevel <= 0) {
        continue;
      }

      const scooter = await this._scooterRepo.getById(ping.scooterId);
      if (!scooter.isEnabled) {
        continue;
      }

      if (await this._bookingRepo.isScooterTaken(ping.scooterId)) {
        continue;
      }

      if (await this._rideRepo.isScooterTaken(ping.scooterId)) {
        continue;
      }

      results.push(ping);
    }

    return uniqBy(results, "scooterId");
  }

  public async getRentablePaginated(pagination: PaginationRequest) {
    const rentable = await this.getRentable();
    return createPaginatedResponse(rentable, pagination);
  }

  public async getRentableWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    const rentable = await this.getRentable();
    const withinBounds = this.getWithinBounds(rentable, bounds);
    return createPaginatedResponse(withinBounds, pagination);
  }

  public async getWithinBoundsPaginated(
    bounds: Bounds,
    pagination: PaginationRequest
  ) {
    const pings = uniqBy(this._pings, "scooterId");
    const withinBounds = this.getWithinBounds(pings, bounds);
    return createPaginatedResponse(withinBounds, pagination);
  }

  public async save(ping: Ping) {
    this._pings.push(ping);
    this._pings = orderBy(this._pings, ["date"], ["desc"]);
  }
}

export { PingMockRepo };

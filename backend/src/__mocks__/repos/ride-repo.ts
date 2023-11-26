import * as crypto from "crypto";
import orderBy from "lodash/orderBy";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { NotFoundError } from "../../errors/not-found";
import { IRideRepo } from "../../interfaces/ride-repo";
import { Ride, RideId } from "../../models/ride";
import { ScooterId } from "../../models/scooter";
import { UserId } from "../../models/user";
import { PaginationRequest } from "../../vo/pagination";

class RideMockRepo implements IRideRepo {
  private _rides: Ride[] = [];

  private getActive() {
    return this._rides.filter((r) => !r.dateFinished);
  }

  public async getActiveByScooterId(scooterId: ScooterId) {
    const active = this.getActive();
    return active.filter((r) => r.scooterId === scooterId);
  }

  public async getActiveByUserId(userId: UserId) {
    const active = this.getActive();
    return active.filter((r) => r.userId === userId);
  }

  public async getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    const active = await this.getActiveByUserId(userId);
    return createPaginatedResponse(active, pagination);
  }

  public async getActivePaginated(pagination: PaginationRequest) {
    const active = this.getActive();
    return createPaginatedResponse(active, pagination);
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._rides, pagination);
  }

  public async getById(id: RideId) {
    const ride = this._rides.find((r) => r.id === id);

    if (!ride) {
      throw new NotFoundError("Поездка не найдена");
    }

    return ride;
  }

  private getFinished() {
    return this._rides.filter((r) => !!r.dateFinished);
  }

  public async getFinishedByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    const finished = this.getFinished().filter((r) => r.userId === userId);
    return createPaginatedResponse(finished, pagination);
  }

  public async getFinishedPaginated(pagination: PaginationRequest) {
    const finished = this.getFinished();
    return createPaginatedResponse(finished, pagination);
  }

  public async isScooterTaken(scooterId: ScooterId) {
    const active = this.getActive();
    return !!active.find((r) => r.scooterId === scooterId);
  }

  public nextId() {
    return crypto.randomUUID() as RideId;
  }

  public async save(ride: Ride): Promise<void> {
    this.remove(ride.id);
    this._rides.push(ride);
    this._rides = orderBy(this._rides, ["date_started"], ["desc"]);
  }

  private remove(rideId: RideId) {
    this._rides = this._rides.filter((r) => r.id !== rideId);
  }
}

export { RideMockRepo };

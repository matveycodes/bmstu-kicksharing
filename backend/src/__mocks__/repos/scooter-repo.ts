import * as crypto from "crypto";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { NotFoundError } from "../../errors/not-found";
import { IScooterRepo } from "../../interfaces/scooter-repo";
import { Scooter, ScooterId } from "../../models/scooter";
import { PaginationRequest } from "../../vo/pagination";

class ScooterMockRepo implements IScooterRepo {
  private _scooters: Scooter[] = [];

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._scooters, pagination);
  }

  public async getById(id: ScooterId) {
    const scooter = this._scooters.find((s) => s.id === id);

    if (!scooter) {
      throw new NotFoundError("Самокат не найден");
    }

    return scooter;
  }

  public nextId() {
    return crypto.randomUUID() as ScooterId;
  }

  public async save(scooter: Scooter) {
    this.remove(scooter.id);
    this._scooters.push(scooter);
  }

  private remove(scooterId: ScooterId) {
    this._scooters = this._scooters.filter((s) => s.id !== scooterId);
  }
}

export { ScooterMockRepo };

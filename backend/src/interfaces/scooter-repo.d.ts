import { Scooter, ScooterId } from "../models/scooter";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IScooterRepo {
  nextId(): ScooterId;
  save(scooter: Scooter): Promise<void>;
  getById(id: ScooterId): Promise<Scooter>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Scooter>>;
}

export { IScooterRepo };

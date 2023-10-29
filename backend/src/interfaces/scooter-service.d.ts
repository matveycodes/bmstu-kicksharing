import { UpdateScooterModelDto } from "../dto/update-scooter-model";
import { Scooter, ScooterId } from "../models/scooter";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IScooterService {
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Scooter>>;
  getById(id: ScooterId): Promise<Scooter>;
  update(id: ScooterId, dto: UpdateScooterModelDto): Promise<void>;
}

export { IScooterService };

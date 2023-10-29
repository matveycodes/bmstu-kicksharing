import { CreateScooterServiceDto } from "../dto/create-scooter-service";
import { UpdateScooterModelDto } from "../dto/update-scooter-model";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { IScooterService } from "../interfaces/scooter-service";
import { ScooterId } from "../models/scooter";
import { PaginationRequest } from "../vo/pagination";

class ScooterService implements IScooterService {
  private _scooterRepo: IScooterRepo;

  public constructor(dto: CreateScooterServiceDto) {
    this._scooterRepo = dto.scooterRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._scooterRepo.getAllPaginated(pagination);
  }

  public async getById(id: ScooterId) {
    return this._scooterRepo.getById(id);
  }

  public async update(id: ScooterId, dto: UpdateScooterModelDto) {
    const scooter = await this._scooterRepo.getById(id);

    scooter.status = dto.status ?? scooter.status;
    scooter.number = dto.number ?? scooter.number;

    await this._scooterRepo.save(scooter);
  }
}

export { ScooterService };

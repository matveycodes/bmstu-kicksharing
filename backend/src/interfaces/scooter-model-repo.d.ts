import { ScooterModel, ScooterModelId } from "../models/scooter-model";

interface IScooterModelRepo {
  nextId(): ScooterModelId;
  getById(id: ScooterModelId): Promise<ScooterModel>;
  save(scooterModel: ScooterModel): Promise<void>;
}

export { IScooterModelRepo };

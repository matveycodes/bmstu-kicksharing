import { ScooterModel, ScooterModelId } from "../models/scooter-model";

interface IScooterModelRepo {
  getById(id: ScooterModelId): Promise<ScooterModel>;
}

export { IScooterModelRepo };

import { ScooterId, ScooterStatus } from "../models/scooter";
import { ScooterModelId } from "../models/scooter-model";

interface CreateScooterModelDto {
  id: ScooterId;
  status: ScooterStatus;
  number: string;
  modelId: ScooterModelId;
}

export { CreateScooterModelDto };

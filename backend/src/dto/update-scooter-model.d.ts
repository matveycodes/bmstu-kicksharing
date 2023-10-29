import { ScooterStatus } from "../models/scooter";

interface UpdateScooterModelDto {
  status?: ScooterStatus;
  number?: string;
}

export { UpdateScooterModelDto };

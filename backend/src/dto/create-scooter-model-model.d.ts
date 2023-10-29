import { ScooterManufacturerId } from "../models/scooter-manufacturer";
import { ScooterModelId } from "../models/scooter-model";

interface CreateScooterModelModelDto {
  id: ScooterModelId;
  title: string;
  singleChargeMileage: number;
  weight: number;
  maxSpeed: number;
  maxLoad: number;
  manufacturerId: ScooterManufacturerId;
  year: number;
}

export { CreateScooterModelModelDto };

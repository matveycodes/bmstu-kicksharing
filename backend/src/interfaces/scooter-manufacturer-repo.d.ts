import {
  ScooterManufacturer,
  ScooterManufacturerId,
} from "../models/scooter-manufacturer";

interface IScooterManufacturerRepo {
  nextId(): ScooterManufacturerId;
  getById(id: ScooterManufacturerId): Promise<ScooterManufacturer>;
  save(scooterManufacturer: ScooterManufacturer): Promise<void>;
}

export { IScooterManufacturerRepo };

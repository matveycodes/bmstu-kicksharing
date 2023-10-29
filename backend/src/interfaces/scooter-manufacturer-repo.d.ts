import {
  ScooterManufacturer,
  ScooterManufacturerId,
} from "../models/scooter-manufacturer";

interface IScooterManufacturerRepo {
  getById(id: ScooterManufacturerId): Promise<ScooterManufacturer>;
}

export { IScooterManufacturerRepo };

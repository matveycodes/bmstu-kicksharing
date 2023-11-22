import { ScooterManufacturer } from "../../scooter-manufacturers";

interface ScooterModel {
  id: string;
  title: string;
  singleChargeMileage: number;
  weight: number;
  maxSpeed: number;
  maxLoad: number;
  year: number;
  manufacturer: ScooterManufacturer;
}

export { ScooterModel };

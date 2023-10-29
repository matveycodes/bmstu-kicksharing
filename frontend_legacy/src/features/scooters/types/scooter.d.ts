interface ScooterManufacturer {
  id: string;
  title: string;
}

interface ScooterModel {
  id: string;
  title: string;
  singleChargeMileage: number;
  weight: number;
  maxSpeed: number;
  maxLoad: number;
  manufacturer: ScooterManufacturer;
  year: number;
}

interface Scooter {
  id: string;
  status: string;
  number: string;
  model: ScooterModel;
}

export { Scooter };

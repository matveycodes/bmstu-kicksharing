import { ScooterManufacturerId } from "../../../models/scooter-manufacturer";
import { ScooterModel, ScooterModelId } from "../../../models/scooter-model";
import { ScooterModelRow } from "./types";

const parseScooterModelRow = (row: ScooterModelRow): ScooterModel => {
  return new ScooterModel({
    id: row.id as ScooterModelId,
    manufacturerId: row.manufacturer_id as ScooterManufacturerId,
    title: row.title,
    singleChargeMileage: row.single_charge_mileage,
    weight: row.weight,
    maxSpeed: row.max_speed,
    maxLoad: row.max_load,
    year: row.year,
  });
};

export { parseScooterModelRow };

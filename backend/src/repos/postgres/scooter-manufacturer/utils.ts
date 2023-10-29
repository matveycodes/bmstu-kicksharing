import {
  ScooterManufacturer,
  ScooterManufacturerId,
} from "../../../models/scooter-manufacturer";
import { ScooterManufacturerRow } from "./types";

const parseScooterManufacturerRow = (
  row: ScooterManufacturerRow
): ScooterManufacturer => {
  return new ScooterManufacturer({
    id: row.id as ScooterManufacturerId,
    title: row.title,
  });
};

export { parseScooterManufacturerRow };

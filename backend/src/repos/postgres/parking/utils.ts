import { Parking, ParkingId } from "../../../models/parking";
import { ParkingRow } from "./types";

const parseParkingRow = (row: ParkingRow): Parking => {
  return new Parking({
    id: row.id as ParkingId,
    location: {
      latitude: row.latitude,
      longitude: row.longitude,
    },
  });
};

export { parseParkingRow };

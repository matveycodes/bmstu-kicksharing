import {
  RestrictedZone,
  RestrictedZoneId,
} from "../../../models/restricted-zone";
import { RestrictedZoneRow } from "./types";

const parseRestrictedZoneRow = (row: RestrictedZoneRow): RestrictedZone => {
  const rawPolygon = JSON.parse(row.polygon) as { coordinates: number[][][] };

  const polygon = rawPolygon.coordinates[0].map((coordinate) => ({
    longitude: coordinate[0],
    latitude: coordinate[1],
  }));

  return new RestrictedZone({
    id: row.id as RestrictedZoneId,
    polygon,
    speedLimit: row.speed_limit,
  });
};

export { parseRestrictedZoneRow };

import { RestrictedZoneId } from "../models/restricted-zone";
import { GPSLocation } from "../types/gps-location";

interface CreateRestrictedZoneModelDto {
  id: RestrictedZoneId;
  polygon: GPSLocation[];
  speedLimit: number;
}

export { CreateRestrictedZoneModelDto };

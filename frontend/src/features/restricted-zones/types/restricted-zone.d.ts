import { GPSLocation } from "../../../types/gps-location";

interface RestrictedZone {
  id: string;
  polygon: GPSLocation[];
  speedLimit: number;
}

export { RestrictedZone };

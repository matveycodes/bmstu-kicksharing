import { Scooter } from "features/scooters";
import { Location } from "features/map";

interface Ping {
  scooter: Scooter;
  date: Date;
  metaInfo?: Record<string, unknown>;
  location: Location;
  batteryLevel: number;
  lockState: string;
  lightsState: string;
}

export { Ping };

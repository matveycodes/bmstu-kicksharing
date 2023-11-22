import { GPSLocation } from "../../../types/gps-location";
import { Scooter } from "../../scooters";

interface Ping {
  date: string;
  location: GPSLocation;
  batteryLevel: number;
  lockState: string;
  lightsState: string;
  scooter: Scooter;
}

export { Ping };

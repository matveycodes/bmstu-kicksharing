import { ScooterId } from "../models/scooter";
import { GPSLocation } from "../types/gps-location";

type LockState = "locked" | "unlocked";

type LightsState = "on" | "off";

interface Ping {
  scooterId: ScooterId;
  date: Date;
  metaInfo?: Record<string, unknown>;
  location: GPSLocation;
  batteryLevel: number;
  lockState: LockState;
  lightsState: LightsState;
}

export { LightsState, LockState, Ping };

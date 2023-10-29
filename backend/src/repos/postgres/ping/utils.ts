import { ScooterId } from "../../../models/scooter";
import { LightsState, LockState, Ping } from "../../../vo/ping";
import { PingRow } from "./types";

const parsePingRow = (row: PingRow): Ping => {
  return {
    scooterId: row.scooter_id as ScooterId,
    date: new Date(row.date),
    metaInfo: row.meta_info ?? undefined,
    location: {
      longitude: row.longitude,
      latitude: row.latitude,
    },
    batteryLevel: row.battery_level,
    lockState: row.lock_state as LockState,
    lightsState: row.lights_state as LightsState,
  } as Ping;
};

export { parsePingRow };

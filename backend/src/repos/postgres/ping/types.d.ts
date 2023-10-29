interface PingRow {
  scooter_id: string;
  date: string;
  meta_info: object | null;
  latitude: number;
  longitude: number;
  battery_level: number;
  lock_state: string;
  lights_state: string;
}

export { PingRow };

interface RideRow {
  id: string;
  user_id: string;
  scooter_id: string;
  start_price: number;
  per_minute_price: number;
  date_started: string;
  date_finished: string | null;
}

export { RideRow };

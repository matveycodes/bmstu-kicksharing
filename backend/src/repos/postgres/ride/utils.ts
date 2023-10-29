import { Ride, RideId } from "../../../models/ride";
import { ScooterId } from "../../../models/scooter";
import { UserId } from "../../../models/user";
import { RideRow } from "./types";

const parseRideRow = (row: RideRow): Ride => {
  return new Ride({
    id: row.id as RideId,
    userId: row.user_id as UserId,
    scooterId: row.scooter_id as ScooterId,
    startPrice: row.start_price,
    perMinutePrice: row.per_minute_price,
    dateStarted: new Date(row.date_started),
    dateFinished: row.date_finished ? new Date(row.date_finished) : undefined,
  });
};

export { parseRideRow };

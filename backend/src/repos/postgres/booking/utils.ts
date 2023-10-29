import { Booking, BookingId } from "../../../models/booking";
import { ScooterId } from "../../../models/scooter";
import { UserId } from "../../../models/user";
import { BookingRow } from "./types";

const parseBookingRow = (row: BookingRow): Booking => {
  return new Booking({
    id: row.id as BookingId,
    userId: row.user_id as UserId,
    scooterId: row.scooter_id as ScooterId,
    dateStarted: new Date(row.date_started),
    dateFinished: new Date(row.date_finished),
  });
};

export { parseBookingRow };

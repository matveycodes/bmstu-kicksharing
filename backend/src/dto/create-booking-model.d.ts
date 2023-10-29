import { BookingId } from "../models/booking";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";

interface CreateBookingModelDto {
  id: BookingId;
  userId: UserId;
  scooterId: ScooterId;
  dateStarted: Date;
  dateFinished: Date;
}

export { CreateBookingModelDto };

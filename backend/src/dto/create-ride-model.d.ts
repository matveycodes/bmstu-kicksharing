import { RideId } from "../models/ride";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";

interface CreateRideModelDto {
  id: RideId;
  userId: UserId;
  scooterId: ScooterId;
  startPrice: number;
  perMinutePrice: number;
  dateStarted: Date;
  dateFinished?: Date;
}

export { CreateRideModelDto };

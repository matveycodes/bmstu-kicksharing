import { Scooter } from "../../scooters";
import { User } from "../../user";

interface Ride {
  dateFinished: string | null;
  dateStarted: string | null;
  duration: number;
  id: string;
  perMinutePrice: number;
  scooter: Scooter;
  startPrice: number;
  totalPrice: number;
  user: User;
}

export { Ride };

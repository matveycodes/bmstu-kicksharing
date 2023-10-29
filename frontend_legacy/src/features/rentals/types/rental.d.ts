import { User } from "features/user";
import { Scooter } from "features/scooters";

interface Rental {
  id: string;
  user: User;
  scooter: Scooter;
  startPrice: number;
  perMinutePrice: number;
  dateStarted: string;
  dateFinished: string | null;
  duration: number;
  totalPrice: number;
  scooterNumber: string;
}

export { Rental };

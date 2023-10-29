import { User } from "features/user";
import { Scooter } from "features/scooters";

interface Booking {
  id: string;
  user: User;
  scooter: Scooter;
  dateStarted: string;
  dateFinished: string;
  duration: number;
}

export { Booking };

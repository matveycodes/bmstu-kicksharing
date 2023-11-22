import { Scooter } from "../../scooters";

interface Booking {
  id: string;
  dateStarted: string;
  dateFinished: string;
  duration: number;
  scooter: Scooter;
}

export { Booking };

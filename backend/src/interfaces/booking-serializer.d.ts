import { Booking } from "../models/booking";

interface IBookingSerializer {
  serialize(source: Booking | Booking[]): Promise<object>;
}

export { IBookingSerializer };

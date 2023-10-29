import { IBookingSerializer } from "../interfaces/booking-serializer";
import { IBookingService } from "../interfaces/booking-service";

interface CreateBookingControllerDto {
  bookingService: IBookingService;
  bookingSerializer: IBookingSerializer;
}

export { CreateBookingControllerDto };

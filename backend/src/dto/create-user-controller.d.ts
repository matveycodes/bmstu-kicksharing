import { IBookingSerializer } from "../interfaces/booking-serializer";
import { IBookingService } from "../interfaces/booking-service";
import { IPurchaseSerializer } from "../interfaces/purchase-serializer";
import { IPurchaseService } from "../interfaces/purchase-service";
import { IRideSerializer } from "../interfaces/ride-serializer";
import { IRideService } from "../interfaces/ride-service";
import { IUserService } from "../interfaces/user-service";

interface CreateUserControllerDto {
  userService: IUserService;
  bookingService: IBookingService;
  bookingSerializer: IBookingSerializer;
  purchaseService: IPurchaseService;
  purchaseSerializer: IPurchaseSerializer;
  rideService: IRideService;
  rideSerializer: IRideSerializer;
}

export { CreateUserControllerDto };

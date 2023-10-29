import { IRideSerializer } from "../interfaces/ride-serializer";
import { IRideService } from "../interfaces/ride-service";

interface CreateRideControllerDto {
  rideService: IRideService;
  rideSerializer: IRideSerializer;
}

export { CreateRideControllerDto };

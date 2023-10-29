import { IRideSerializer } from "../interfaces/ride-serializer";
import { IRideService } from "../interfaces/ride-service";

interface CreateHistoryControllerDto {
  rideService: IRideService;
  rideSerializer: IRideSerializer;
}

export { CreateHistoryControllerDto };

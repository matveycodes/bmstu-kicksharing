import { IPingSerializer } from "../interfaces/ping-serializer";
import { IPingService } from "../interfaces/ping-service";

interface CreatePingControllerDto {
  pingService: IPingService;
  pingSerializer: IPingSerializer;
}

export { CreatePingControllerDto };

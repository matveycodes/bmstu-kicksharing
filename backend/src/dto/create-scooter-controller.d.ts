import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { IScooterService } from "../interfaces/scooter-service";

interface CreateScooterControllerDto {
  scooterService: IScooterService;
  scooterSerializer: IScooterSerializer;
}

export { CreateScooterControllerDto };

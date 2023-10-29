import { IScooterRepo } from "../interfaces/scooter-repo";
import { IScooterSerializer } from "../interfaces/scooter-serializer";

interface CreatePingSerializerDto {
  scooterSerializer: IScooterSerializer;
  scooterRepo: IScooterRepo;
}

export { CreatePingSerializerDto };

import { IScooterModelRepo } from "../interfaces/scooter-model-repo";
import { IScooterModelSerializer } from "../interfaces/scooter-model-serializer";

interface CreateScooterSerializerDto {
  scooterModelSerializer: IScooterModelSerializer;
  scooterModelRepo: IScooterModelRepo;
}

export { CreateScooterSerializerDto };

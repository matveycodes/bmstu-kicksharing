import { IScooterRepo } from "../interfaces/scooter-repo";
import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { IUserRepo } from "../interfaces/user-repo";

interface CreateBookingSerializerDto {
  userRepo: IUserRepo;
  scooterRepo: IScooterRepo;
  scooterSerializer: IScooterSerializer;
}

export { CreateBookingSerializerDto };

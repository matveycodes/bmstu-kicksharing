import { IBookingRepo } from "../interfaces/booking-repo";
import { IPingRepo } from "../interfaces/ping-repo";
import { IRideRepo } from "../interfaces/ride-repo";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { ISettingRepo } from "../interfaces/setting-repo";
import { IUserRepo } from "../interfaces/user-repo";

interface CreateBookingServiceDto {
  bookingRepo: IBookingRepo;
  settingRepo: ISettingRepo;
  scooterRepo: IScooterRepo;
  rideRepo: IRideRepo;
  pingRepo: IPingRepo;
  userRepo: IUserRepo;
}

export { CreateBookingServiceDto };

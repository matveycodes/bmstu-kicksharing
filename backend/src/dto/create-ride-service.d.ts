import { IBillingGateway } from "../interfaces/billing-gateway";
import { IBookingRepo } from "../interfaces/booking-repo";
import { IPingRepo } from "../interfaces/ping-repo";
import { IRideRepo } from "../interfaces/ride-repo";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { ISettingRepo } from "../interfaces/setting-repo";
import { ITariffService } from "../interfaces/tariff-service";
import { IUserRepo } from "../interfaces/user-repo";

interface CreateRideServiceDto {
  rideRepo: IRideRepo;
  bookingRepo: IBookingRepo;
  userRepo: IUserRepo;
  scooterRepo: IScooterRepo;
  settingRepo: ISettingRepo;
  tariffService: ITariffService;
  pingRepo: IPingRepo;
  billingGateway: IBillingGateway;
}

export { CreateRideServiceDto };

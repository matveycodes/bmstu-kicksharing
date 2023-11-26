import { CreateRideServiceDto } from "../dto/create-ride-service";
import { BadStateError } from "../errors/bad-state";
import { LimitError } from "../errors/limit";
import { PermissionError } from "../errors/permission";
import { IBillingGateway } from "../interfaces/billing-gateway";
import { IBookingRepo } from "../interfaces/booking-repo";
import { IPingRepo } from "../interfaces/ping-repo";
import { IRideRepo } from "../interfaces/ride-repo";
import { IRideService } from "../interfaces/ride-service";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { ISettingRepo } from "../interfaces/setting-repo";
import { ITariffService } from "../interfaces/tariff-service";
import { IUserRepo } from "../interfaces/user-repo";
import { Ride, RideId } from "../models/ride";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";
import { PaginationRequest } from "../vo/pagination";

class RideService implements IRideService {
  private _rideRepo: IRideRepo;
  private _bookingRepo: IBookingRepo;
  private _userRepo: IUserRepo;
  private _scooterRepo: IScooterRepo;
  private _settingRepo: ISettingRepo;
  private _pingRepo: IPingRepo;

  private _tariffService: ITariffService;
  private _billingGateway: IBillingGateway;

  public constructor(dto: CreateRideServiceDto) {
    this._rideRepo = dto.rideRepo;
    this._bookingRepo = dto.bookingRepo;
    this._userRepo = dto.userRepo;
    this._scooterRepo = dto.scooterRepo;
    this._settingRepo = dto.settingRepo;
    this._tariffService = dto.tariffService;
    this._pingRepo = dto.pingRepo;
    this._billingGateway = dto.billingGateway;
  }

  public async getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    return this._rideRepo.getActiveByUserIdPaginated(userId, pagination);
  }

  public async getFinishedByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    return this._rideRepo.getFinishedByUserIdPaginated(userId, pagination);
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._rideRepo.getAllPaginated(pagination);
  }

  public async getActivePaginated(pagination: PaginationRequest) {
    return this._rideRepo.getActivePaginated(pagination);
  }

  public async getFinishedPaginated(pagination: PaginationRequest) {
    return this._rideRepo.getFinishedPaginated(pagination);
  }

  public async getById(id: RideId) {
    return this._rideRepo.getById(id);
  }

  private async ensureScooterIsRentable(scooterId: ScooterId) {
    const scooter = await this._scooterRepo.getById(scooterId);
    if (!scooter.isEnabled) {
      throw new BadStateError("Самокат недоступен");
    }

    if (await this._bookingRepo.isScooterTaken(scooterId)) {
      throw new BadStateError("Самокат забронирован");
    }

    if (await this._rideRepo.isScooterTaken(scooterId)) {
      throw new BadStateError("Самокат уже арендован");
    }

    const ping = await this._pingRepo.getLatestByScooterId(scooterId);
    if (!ping || ping.batteryLevel <= 0) {
      throw new BadStateError("Самокат разряжен");
    }
  }

  private async ensureUserCanRent(userId: UserId) {
    const user = await this._userRepo.getById(userId);
    if (!user.isActive) {
      throw new PermissionError("Пользователь не может арендовать самокаты");
    }

    const activeRides = await this._rideRepo.getActiveByUserId(user.id);
    const limit = +(await this._settingRepo.getByName("MAX_CONCURRENT_RIDES"))
      .value;
    if (activeRides.length >= limit) {
      throw new LimitError("Арендовано максимальное количество самокатов");
    }
  }

  public async create(scooterId: ScooterId, userId: UserId) {
    await this.ensureUserCanRent(userId);
    await this.ensureScooterIsRentable(scooterId);

    const { startPrice, perMinutePrice } = await this._tariffService.get(
      userId
    );

    const ride = new Ride({
      id: this._rideRepo.nextId(),
      userId,
      scooterId,
      startPrice,
      perMinutePrice,
      dateStarted: new Date(),
    });
    await this._rideRepo.save(ride);
  }

  public async finish(id: RideId) {
    const ride = await this._rideRepo.getById(id);

    if (ride.dateFinished) {
      throw new BadStateError("Поездка уже завершена");
    }

    ride.dateFinished = new Date();
    await this._rideRepo.save(ride);

    await this._billingGateway.charge(ride.userId, ride.totalPrice);
  }

  public async save(ride: Ride) {
    return this._rideRepo.save(ride);
  }
}

export { RideService };

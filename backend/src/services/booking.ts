import dayjs from "dayjs";

import { CreateBookingServiceDto } from "../dto/create-booking-service";
import { BadStateError } from "../errors/bad-state";
import { LimitError } from "../errors/limit";
import { PermissionError } from "../errors/permission";
import { IBookingRepo } from "../interfaces/booking-repo";
import { IBookingService } from "../interfaces/booking-service";
import { IPingRepo } from "../interfaces/ping-repo";
import { IRideRepo } from "../interfaces/ride-repo";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { ISettingRepo } from "../interfaces/setting-repo";
import { IUserRepo } from "../interfaces/user-repo";
import { Booking, BookingId } from "../models/booking";
import { ScooterId } from "../models/scooter";
import { UserId } from "../models/user";
import { PaginationRequest } from "../vo/pagination";

class BookingService implements IBookingService {
  private _bookingRepo: IBookingRepo;
  private _settingRepo: ISettingRepo;
  private _scooterRepo: IScooterRepo;
  private _rideRepo: IRideRepo;
  private _pingRepo: IPingRepo;
  private _userRepo: IUserRepo;

  public constructor(dto: CreateBookingServiceDto) {
    this._bookingRepo = dto.bookingRepo;
    this._settingRepo = dto.settingRepo;
    this._scooterRepo = dto.scooterRepo;
    this._rideRepo = dto.rideRepo;
    this._pingRepo = dto.pingRepo;
    this._userRepo = dto.userRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._bookingRepo.getAllPaginated(pagination);
  }

  private async ensureScooterIsBookable(scooterId: ScooterId) {
    const scooter = await this._scooterRepo.getById(scooterId);
    if (!scooter.isEnabled) {
      throw new BadStateError("Самокат недоступен");
    }

    if (await this._rideRepo.isScooterTaken(scooterId)) {
      throw new BadStateError("Самокат арендован");
    }

    if (await this._bookingRepo.isScooterTaken(scooterId)) {
      throw new BadStateError("Самокат уже забронирован");
    }

    const ping = await this._pingRepo.getLatestByScooterId(scooterId);
    if (!ping || ping.batteryLevel <= 0) {
      throw new BadStateError("Самокат разряжен");
    }
  }

  private async ensureUserCanBook(userId: UserId) {
    const user = await this._userRepo.getById(userId);
    if (!user.isActive) {
      throw new PermissionError("Пользователь не может бронировать самокаты");
    }

    const activeBookings = await this._bookingRepo.getActiveByUserId(userId);
    const limit = +(
      await this._settingRepo.getByName("MAX_CONCURRENT_BOOKINGS")
    ).value;
    if (activeBookings.length >= limit) {
      throw new LimitError("Забронировано максимальное количество самокатов");
    }
  }

  public async getActivePaginated(pagination: PaginationRequest) {
    return this._bookingRepo.getActivePaginated(pagination);
  }

  public async getFinishedPaginated(pagination: PaginationRequest) {
    return this._bookingRepo.getFinishedPaginated(pagination);
  }

  public async getById(id: BookingId) {
    return this._bookingRepo.getById(id);
  }

  public async getActiveByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    return this._bookingRepo.getActiveByUserIdPaginated(userId, pagination);
  }

  public async cancel(id: BookingId) {
    const booking = await this._bookingRepo.getById(id);

    const now = new Date();
    if (booking.dateFinished <= now) {
      throw new BadStateError("Бронирование уже завершено");
    }

    booking.dateFinished = now;
    await this._bookingRepo.save(booking);
  }

  public async create(scooterId: ScooterId, userId: UserId) {
    await this.ensureScooterIsBookable(scooterId);
    await this.ensureUserCanBook(userId);

    const dateStarted = new Date();
    const duration = +(
      await this._settingRepo.getByName("MAX_BOOKING_DURATION")
    ).value;
    const dateFinished = dayjs(dateStarted).add(duration, "seconds").toDate();

    const booking = new Booking({
      id: this._bookingRepo.nextId(),
      userId,
      scooterId,
      dateStarted,
      dateFinished,
    });
    await this._bookingRepo.save(booking);
  }
}

export { BookingService };

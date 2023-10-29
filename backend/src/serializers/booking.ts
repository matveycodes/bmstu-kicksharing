import { CreateBookingSerializerDto } from "../dto/create-booking-serializer";
import { IBookingSerializer } from "../interfaces/booking-serializer";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { IUserRepo } from "../interfaces/user-repo";
import { Booking } from "../models/booking";

class BookingSerializer implements IBookingSerializer {
  private _userRepo: IUserRepo;
  private _scooterRepo: IScooterRepo;
  private _scooterSerializer: IScooterSerializer;

  public constructor(dto: CreateBookingSerializerDto) {
    this._userRepo = dto.userRepo;
    this._scooterRepo = dto.scooterRepo;
    this._scooterSerializer = dto.scooterSerializer;
  }

  public async serialize(source: Booking | Booking[]) {
    return Array.isArray(source)
      ? this.serializeMany(source)
      : this.serializeOne(source);
  }

  private async serializeOne(booking: Booking) {
    const { userId, scooterId, ...serializedBooking } = booking.toJSON();

    const [user, scooter] = await Promise.all([
      this._userRepo.getById(userId),
      this._scooterRepo.getById(scooterId),
    ]);
    const serializedScooter = await this._scooterSerializer.serialize(scooter);

    return { ...serializedBooking, scooter: serializedScooter, user };
  }

  private async serializeMany(bookings: Booking[]) {
    return Promise.all(bookings.map(this.serializeOne.bind(this)));
  }
}

export { BookingSerializer };

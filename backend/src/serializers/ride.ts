import { CreateRideSerializerDto } from "../dto/create-ride-serializer";
import { IRideSerializer } from "../interfaces/ride-serializer";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { IUserRepo } from "../interfaces/user-repo";
import { Ride } from "../models/ride";

class RideSerializer implements IRideSerializer {
  private _userRepo: IUserRepo;
  private _scooterRepo: IScooterRepo;
  private _scooterSerializer: IScooterSerializer;

  public constructor(dto: CreateRideSerializerDto) {
    this._userRepo = dto.userRepo;
    this._scooterRepo = dto.scooterRepo;
    this._scooterSerializer = dto.scooterSerializer;
  }

  public async serialize(source: Ride | Ride[]) {
    return Array.isArray(source)
      ? this.serializeMany(source)
      : this.serializeOne(source);
  }

  private async serializeOne(ride: Ride) {
    const { userId, scooterId, ...serializedRide } = ride.toJSON();

    const [user, scooter] = await Promise.all([
      this._userRepo.getById(userId),
      this._scooterRepo.getById(scooterId),
    ]);

    const serializedScooter = await this._scooterSerializer.serialize(scooter);

    return { user, scooter: serializedScooter, ...serializedRide };
  }

  private async serializeMany(rides: Ride[]) {
    return Promise.all(rides.map(this.serializeOne.bind(this)));
  }
}

export { RideSerializer };

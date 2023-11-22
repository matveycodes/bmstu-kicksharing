import { CreatePingSerializerDto } from "../dto/create-ping-serializer";
import { IPingSerializer } from "../interfaces/ping-serializer";
import { IScooterRepo } from "../interfaces/scooter-repo";
import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { Ping } from "../vo/ping";

class PingSerializer implements IPingSerializer {
  private _scooterSerializer: IScooterSerializer;
  private _scooterRepo: IScooterRepo;

  public constructor(dto: CreatePingSerializerDto) {
    this._scooterSerializer = dto.scooterSerializer;
    this._scooterRepo = dto.scooterRepo;
  }

  public async serialize(source: Ping | Ping[]) {
    return Array.isArray(source)
      ? this.serializeMany(source)
      : this.serializeOne(source);
  }

  private async serializeOne({ scooterId, ...ping }: Ping) {
    const scooter = await this._scooterRepo.getById(scooterId);
    const serializedScooter = await this._scooterSerializer.serialize(scooter);

    return { ...ping, scooter: serializedScooter };
  }

  private async serializeMany(pings: Ping[]) {
    return Promise.all(pings.map(this.serializeOne.bind(this)));
  }
}

export { PingSerializer };

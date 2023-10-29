import { CreateScooterSerializerDto } from "../dto/create-scooter-serializer";
import { IScooterModelRepo } from "../interfaces/scooter-model-repo";
import { IScooterModelSerializer } from "../interfaces/scooter-model-serializer";
import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { Scooter } from "../models/scooter";

class ScooterSerializer implements IScooterSerializer {
  private _scooterModelSerializer: IScooterModelSerializer;
  private _scooterModelRepo: IScooterModelRepo;

  public constructor(dto: CreateScooterSerializerDto) {
    this._scooterModelSerializer = dto.scooterModelSerializer;
    this._scooterModelRepo = dto.scooterModelRepo;
  }

  public async serialize(source: Scooter | Scooter[]) {
    return Array.isArray(source)
      ? this.serializeMany(source)
      : this.serializeOne(source);
  }

  private async serializeOne(scooter: Scooter) {
    const { modelId, ...serializedScooter } = scooter.toJSON();

    const model = await this._scooterModelRepo.getById(modelId);
    const serializedModel = await this._scooterModelSerializer.serialize(model);

    return { ...serializedScooter, model: serializedModel };
  }

  private async serializeMany(scooters: Scooter[]) {
    return Promise.all(scooters.map(this.serializeOne.bind(this)));
  }
}

export { ScooterSerializer };

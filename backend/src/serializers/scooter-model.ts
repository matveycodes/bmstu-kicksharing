import { CreateScooterModelSerializerDto } from "../dto/create-scooter-model-serializer";
import { IScooterManufacturerRepo } from "../interfaces/scooter-manufacturer-repo";
import { IScooterModelSerializer } from "../interfaces/scooter-model-serializer";
import { ScooterModel } from "../models/scooter-model";

class ScooterModelSerializer implements IScooterModelSerializer {
  private _scooterManufacturerRepo: IScooterManufacturerRepo;

  public constructor(dto: CreateScooterModelSerializerDto) {
    this._scooterManufacturerRepo = dto.scooterManufacturerRepo;
  }

  public async serialize(source: ScooterModel | ScooterModel[]) {
    return Array.isArray(source)
      ? this.serializeMany(source)
      : this.serializeOne(source);
  }

  private async serializeOne(scooterModel: ScooterModel) {
    const { manufacturerId, ...serializedScooterModel } = scooterModel.toJSON();

    const manufacturer = await this._scooterManufacturerRepo.getById(
      manufacturerId
    );

    return { ...serializedScooterModel, manufacturer };
  }

  public async serializeMany(scooterModels: ScooterModel[]) {
    return Promise.all(scooterModels.map(this.serializeOne.bind(this)));
  }
}

export { ScooterModelSerializer };

import { CreateScooterManufacturerModelDto } from "../dto/create-scooter-manufacturer-model";
import { BaseModel } from "./base";

type ScooterManufacturerId = string & { _opaque: "ScooterManufacturer" };

class ScooterManufacturer extends BaseModel<ScooterManufacturerId> {
  private _title: string;

  public constructor(dto: CreateScooterManufacturerModelDto) {
    super(dto.id);

    this._title = dto.title;
  }

  public get title() {
    return this._title;
  }

  public set title(value: string) {
    this._title = value;
  }

  public toJSON() {
    return {
      ...super.toJSON(),
      title: this.title,
    };
  }
}

export { ScooterManufacturer, ScooterManufacturerId };

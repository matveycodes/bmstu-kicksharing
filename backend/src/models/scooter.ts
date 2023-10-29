import { CreateScooterModelDto } from "../dto/create-scooter-model";
import { BaseModel } from "./base";
import { ScooterModelId } from "./scooter-model";

type ScooterStatus = "enabled" | "disabled";

type ScooterId = string & { _opaque: "Scooter" };

class Scooter extends BaseModel<ScooterId> {
  private _status: ScooterStatus;
  private _number: string;
  private _modelId: ScooterModelId;

  public constructor(dto: CreateScooterModelDto) {
    super(dto.id);

    this._status = dto.status;
    this._number = dto.number;
    this._modelId = dto.modelId;
  }

  public get status() {
    return this._status;
  }

  public set status(value: ScooterStatus) {
    this._status = value;
  }

  public get isEnabled() {
    return this.status === "enabled";
  }

  public get number() {
    return this._number;
  }

  public set number(value: string) {
    this._number = value;
  }

  public get modelId() {
    return this._modelId;
  }

  public set modelId(value: ScooterModelId) {
    this._modelId = value;
  }

  public toJSON() {
    return {
      ...super.toJSON(),
      status: this.status,
      number: this.number,
      modelId: this.modelId,
    };
  }
}

export { Scooter, ScooterId, ScooterStatus };

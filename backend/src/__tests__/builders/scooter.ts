import * as crypto from "crypto";
import sample from "lodash/sample";

import { Scooter, ScooterId, ScooterStatus } from "../../models/scooter";
import { ScooterModelId } from "../../models/scooter-model";
import { Builder } from "../types/builder";

class ScooterBuilder implements Builder<Scooter> {
  private _id: ScooterId = crypto.randomUUID() as ScooterId;
  private _status: ScooterStatus = sample(["enabled", "disabled"]);
  private _number: string = crypto.randomInt(1000, 9999 + 1).toString();
  private _modelId: ScooterModelId = crypto.randomUUID() as ScooterModelId;

  public withId(id: ScooterId) {
    this._id = id;

    return this;
  }

  public withStatus(status: ScooterStatus) {
    this._status = status;

    return this;
  }

  public withNumber(number: string) {
    this._number = number;

    return this;
  }

  public withModelId(modelId: ScooterModelId) {
    this._modelId = modelId;

    return this;
  }

  public build() {
    return new Scooter({
      id: this._id,
      status: this._status,
      number: this._number,
      modelId: this._modelId,
    });
  }
}

export { ScooterBuilder };

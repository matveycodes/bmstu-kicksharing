import { ScooterModel } from "../models/scooter-model";

interface IScooterModelSerializer {
  serialize(source: ScooterModel | ScooterModel[]): Promise<object>;
}

export { IScooterModelSerializer };

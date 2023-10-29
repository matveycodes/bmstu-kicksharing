import { Scooter } from "../models/scooter";

interface IScooterSerializer {
  serialize(source: Scooter | Scooter[]): Promise<object>;
}

export { IScooterSerializer };

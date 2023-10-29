import { Ride } from "../models/ride";

interface IRideSerializer {
  serialize(source: Ride | Ride[]): Promise<object>;
}

export { IRideSerializer };

import { Ping } from "../vo/ping";

interface IPingSerializer {
  serialize(source: Ping | Ping[]): Promise<object>;
}

export { IPingSerializer };

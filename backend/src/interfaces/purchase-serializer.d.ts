import { Purchase } from "../vo/purchase";

interface IPurchaseSerializer {
  serialize(source: Purchase | Purchase[]): Promise<object>;
}

export { IPurchaseSerializer };

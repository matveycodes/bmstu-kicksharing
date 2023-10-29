import { Tariff } from "../vo/tariff";

interface ITariffService {
  get(): Promise<Tariff>;
}

export { ITariffService };

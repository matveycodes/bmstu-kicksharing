import { formatPrice } from "utils/price";

import { Tariff } from "../types/tariff";

const formatTariff = (tariff: Tariff) => {
  const startPrice = formatPrice(tariff.startPrice);
  const perMinutePrice = formatPrice(tariff.perMinutePrice);

  return `${startPrice} + ${perMinutePrice}/мин`;
};

export { formatTariff };

import { client, RequestConfig } from "../../api";
import { GetTariffResponse } from "../types/api";

const getTariff = async (config?: Omit<RequestConfig, "params">) => {
  const { data } = await client.get<GetTariffResponse>("/tariff/", config);

  return data;
};

export { getTariff };

import { client, RequestConfig } from "../../api";
import { GetPurchasesParams, GetPurchasesResponse } from "../types/api";

const getPurchasesPaginated = async (
  params?: GetPurchasesParams,
  config?: Omit<RequestConfig, "params">
) => {
  const { data } = await client.get<GetPurchasesResponse>(
    "/users/current/purchases/",
    { params, ...config }
  );

  return data;
};

const createPurchase = async (subscriptionId: string) => {
  await client.post("/purchases/", { subscriptionId });
};

export { createPurchase,getPurchasesPaginated };

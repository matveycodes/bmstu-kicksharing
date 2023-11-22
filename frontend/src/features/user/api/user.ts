import { client, RequestConfig } from "../../api";
import { UpdateCurrentUserBody } from "../types/api";

const getCurrentUser = async (config?: Omit<RequestConfig, "params">) => {
  const { data } = await client.get("/users/current/", config);

  return data;
};

const updateCurrentUser = async (body: UpdateCurrentUserBody) => {
  await client.patch("/users/current/", body);
};

export { getCurrentUser, updateCurrentUser };

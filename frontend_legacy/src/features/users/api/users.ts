import { client, RequestConfig } from "features/api";
import { User } from "features/user";

import { GetUsersResponse } from "../types/api";

const getUsers = async (
  config?: Omit<RequestConfig, "params">
): Promise<User[]> => {
  const { data: initialData } = await client.get<GetUsersResponse>("/users/", {
    params: { pageSize: 1 },
    ...config,
  });

  if (initialData.totalCount <= 1) {
    return initialData.results;
  }

  const { data } = await client.get<GetUsersResponse>("/users/", {
    params: { pageSize: initialData.totalCount },
    ...config,
  });

  return data.results;
};

const blockUser = async (id: string) => {
  await client.patch(`/users/${id}/`, { status: "blocked" });
};

export { getUsers, blockUser };

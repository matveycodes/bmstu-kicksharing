import { useQuery, UseQueryOptions } from "@tanstack/react-query";

import { getCurrentUser } from "../api/user";
import { User } from "../types/user";

const useCurrentUser = (
  options?: Omit<UseQueryOptions<User>, "queryKey" | "queryFn">,
) => {
  return useQuery({
    queryKey: ["user", "current"],
    queryFn: ({ signal }) => getCurrentUser({ signal }),
    ...options,
  });
};

export { useCurrentUser };

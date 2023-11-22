import { useQueryClient } from "@tanstack/react-query";
import { useCallback, useMemo } from "react";

const useInvalidateCurrentUser = () => {
  const queryClient = useQueryClient();

  const invalidateCurrentUser = useCallback(async () => {
    await queryClient.invalidateQueries({
      predicate: ({ queryKey }) =>
        queryKey.includes("user") && queryKey.includes("current"),
    });
  }, [queryClient]);

  return useMemo(() => ({ invalidateCurrentUser }), [invalidateCurrentUser]);
};

export { useInvalidateCurrentUser };

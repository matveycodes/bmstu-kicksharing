import { useQueryClient } from "@tanstack/react-query";
import { useCallback, useMemo } from "react";

const useInvalidateRides = () => {
  const queryClient = useQueryClient();

  const invalidateRides = useCallback(async () => {
    await queryClient.invalidateQueries({
      predicate: ({ queryKey }) => queryKey.includes("ride"),
    });
  }, [queryClient]);

  return useMemo(() => ({ invalidateRides }), [invalidateRides]);
};

export { useInvalidateRides };

import { useQueryClient } from "@tanstack/react-query";
import { useCallback, useMemo } from "react";

const useInvalidateBookings = () => {
  const queryClient = useQueryClient();

  const invalidateBookings = useCallback(async () => {
    await queryClient.invalidateQueries({
      predicate: ({ queryKey }) => queryKey.includes("booking"),
    });
  }, [queryClient]);

  return useMemo(() => ({ invalidateBookings }), [invalidateBookings]);
};

export { useInvalidateBookings };

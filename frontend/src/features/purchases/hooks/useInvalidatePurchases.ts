import { useQueryClient } from "@tanstack/react-query";
import { useCallback, useMemo } from "react";

const useInvalidatePurchases = () => {
  const queryClient = useQueryClient();

  const invalidatePurchases = useCallback(async () => {
    await queryClient.invalidateQueries({
      predicate: ({ queryKey }) => queryKey.includes("purchase"),
    });
  }, [queryClient]);

  return useMemo(() => ({ invalidatePurchases }), [invalidatePurchases]);
};

export { useInvalidatePurchases };

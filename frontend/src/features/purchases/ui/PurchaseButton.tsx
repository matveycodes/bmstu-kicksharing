import { useMutation } from "@tanstack/react-query";
import { ComponentProps, FC } from "react";
import toast from "react-hot-toast";

import { Button } from "../../../components";
import { handleError } from "../../../utils/errors";
import { createPurchase } from "../api/purchases";
import { useInvalidatePurchases } from "../hooks/useInvalidatePurchases";

interface Props extends ComponentProps<typeof Button> {
  subscriptionId: string | undefined;
}

const PurchaseButton: FC<Props> = ({ subscriptionId, ...props }) => {
  const { invalidatePurchases } = useInvalidatePurchases();

  const purchaseMutation = useMutation({
    mutationFn: () => createPurchase(subscriptionId!),
    onSuccess: () => {
      toast.success("Подписка успешно куплена");
      void invalidatePurchases();
    },
    onError: handleError,
  });

  return (
    <Button
      {...props}
      disabled={!subscriptionId}
      loading={purchaseMutation.isPending}
      onClick={() => purchaseMutation.mutate()}
    >
      Купить
    </Button>
  );
};

export { PurchaseButton };

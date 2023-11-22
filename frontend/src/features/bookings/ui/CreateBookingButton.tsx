import { useMutation } from "@tanstack/react-query";
import { ComponentProps, FC } from "react";

import { Button } from "../../../components";
import { handleError } from "../../../utils/errors";
import { createBooking } from "../api/bookings";
import { useInvalidateBookings } from "../hooks/useInvalidateBookings";

interface Props extends ComponentProps<typeof Button> {
  scooterId: string;
  onCreated?: () => unknown;
}

const CreateBookingButton: FC<Props> = ({ scooterId, onCreated, ...props }) => {
  const { invalidateBookings } = useInvalidateBookings();

  const createMutation = useMutation({
    mutationFn: () => createBooking(scooterId),
    onSuccess: async () => {
      await invalidateBookings();
      onCreated?.();
    },
    onError: handleError,
  });

  return (
    <Button
      variant="secondary"
      onClick={() => createMutation.mutate()}
      loading={createMutation.isPending}
      {...props}
    >
      Забронировать
    </Button>
  );
};

export { CreateBookingButton };

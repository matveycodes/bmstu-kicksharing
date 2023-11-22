import { useMutation } from "@tanstack/react-query";
import { ComponentProps, FC } from "react";

import { Activity } from "../../../components";
import { handleError } from "../../../utils/errors";
import { cancelBooking } from "../api/bookings";
import { useInvalidateBookings } from "../hooks/useInvalidateBookings";
import { Booking } from "../types/booking";

interface Props
  extends Omit<ComponentProps<typeof Activity>, "entity" | "counter"> {
  booking: Booking;
}

const BookingActivity: FC<Props> = ({ booking, ...props }) => {
  const { invalidateBookings } = useInvalidateBookings();

  const cancelMutation = useMutation({
    mutationFn: () => cancelBooking(booking.id),
    onSuccess: invalidateBookings,
    onError: handleError,
  });

  return (
    <Activity
      entity={booking.scooter.number}
      counter={booking.dateFinished}
      onRemove={cancelMutation.mutateAsync}
      {...props}
    />
  );
};

export { BookingActivity };

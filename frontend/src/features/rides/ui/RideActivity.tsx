import { useMutation } from "@tanstack/react-query";
import dayjs from "dayjs";
import { ComponentProps, FC } from "react";

import { Activity } from "../../../components";
import { handleError } from "../../../utils/errors";
import { finishRide } from "../api/rides";
import { useInvalidateRides } from "../hooks/useInvalidateRides";
import { Ride } from "../types/ride";

interface Props
  extends Omit<ComponentProps<typeof Activity>, "entity" | "counter"> {
  ride: Ride;
}

const RideActivity: FC<Props> = ({ ride, ...props }) => {
  const { invalidateRides } = useInvalidateRides();

  const finishMutation = useMutation({
    mutationFn: () => finishRide(ride.id),
    onSuccess: invalidateRides,
    onError: handleError,
  });

  return (
    <Activity
      entity={ride.scooter.number}
      counter={dayjs(ride.dateStarted).toDate()}
      onRemove={finishMutation.mutateAsync}
      meta={`${ride.totalPrice / 100} ₽`}
      {...props}
    />
  );
};

export { RideActivity };

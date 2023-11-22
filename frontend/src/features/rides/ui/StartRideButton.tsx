import { useMutation } from "@tanstack/react-query";
import { ComponentProps, FC } from "react";

import { Button } from "../../../components";
import { handleError } from "../../../utils/errors";
import { useTariff } from "../../tariffs";
import { startRide } from "../api/rides";
import { useInvalidateRides } from "../hooks/useInvalidateRides";

interface Props extends ComponentProps<typeof Button> {
  scooterId: string;
  onStarted?: () => unknown;
}

const StartRideButton: FC<Props> = ({ scooterId, onStarted, ...props }) => {
  const { data: tariff } = useTariff();

  const { invalidateRides } = useInvalidateRides();

  const startMutation = useMutation({
    mutationFn: () => startRide(scooterId),
    onSuccess: async () => {
      await invalidateRides();
      onStarted?.();
    },
    onError: handleError,
  });

  const suffix = tariff
    ? ` (${tariff.startPrice / 100} ₽ + ${tariff.perMinutePrice / 100} ₽/мин)`
    : "";

  return (
    <Button
      {...props}
      onClick={() => startMutation.mutate()}
      loading={startMutation.isPending}
    >
      Начать поездку{suffix}
    </Button>
  );
};

export { StartRideButton };

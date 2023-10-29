import { Button, Stack, StackProps } from "@chakra-ui/react";
import { FC } from "react";

import { formatTariff, Tariff } from "features/tariff";

interface Props extends StackProps {
  onStartRental?: () => void;
  isStartingRental?: boolean;
  onBook?: () => void;
  isBooking?: boolean;
  tariff?: Tariff;
}

const ScooterInfoActions: FC<Props> = ({
  onStartRental,
  isStartingRental,
  tariff,
  onBook,
  isBooking,
  ...props
}) => {
  return (
    <Stack {...props}>
      <Button
        colorScheme="blue"
        onClick={onStartRental}
        isLoading={isStartingRental}
        isDisabled={isBooking}
        w="100%"
      >
        Начать поездку {tariff && `(${formatTariff(tariff)})`}
      </Button>
      <Button
        onClick={onBook}
        isLoading={isBooking}
        isDisabled={isStartingRental}
        w="100%"
      >
        Забронировать
      </Button>
    </Stack>
  );
};

export { ScooterInfoActions };

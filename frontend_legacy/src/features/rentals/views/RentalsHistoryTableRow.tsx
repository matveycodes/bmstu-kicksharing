import { FC } from "react";
import { Center, TableRowProps, Td, Tr } from "@chakra-ui/react";

import { formatTariff } from "features/tariff";

import { formatPrice } from "utils/price";
import { formatDate, formatDuration } from "utils/time";

import { Rental } from "../types/rental";

interface Props extends Omit<TableRowProps, "children"> {
  rental: Rental;
}

const RentalsHistoryTableRow: FC<Props> = ({ rental, ...props }) => {
  return (
    <Tr {...props}>
      <Td>
        <Center>{rental.scooter.number}</Center>
      </Td>
      <Td>
        <Center>{formatDate(rental.dateStarted)}</Center>
      </Td>
      <Td>
        <Center>{formatDuration(rental.duration)}</Center>
      </Td>
      <Td>
        <Center>
          {formatTariff({
            startPrice: rental.startPrice,
            perMinutePrice: rental.perMinutePrice,
          })}
        </Center>
      </Td>
      <Td>
        <Center>{formatPrice(rental.totalPrice)}</Center>
      </Td>
    </Tr>
  );
};

export { RentalsHistoryTableRow };

import { ComponentProps, FC } from "react";
import {
  Modal,
  ModalBody,
  ModalCloseButton,
  ModalContent,
  ModalFooter,
  ModalHeader,
  ModalOverlay,
  ModalProps,
} from "@chakra-ui/react";

import { Scooter } from "../types/scooter";

import { ScooterBatteryLevelBadge } from "./ScooterBatteryLevelBadge";
import { ScooterInfoActions } from "./ScooterInfoActions";
import { Ping } from "../../pings";

interface Props
  extends Omit<ModalProps, "children">,
    Pick<
      ComponentProps<typeof ScooterInfoActions>,
      "onStartRental" | "isStartingRental" | "onBook" | "isBooking" | "tariff"
    > {
  ping: Ping;
}

const RentableScooterInfoModal: FC<Props> = ({
  ping,
  onStartRental,
  onBook,
  tariff,
  isStartingRental,
  isBooking,
  ...props
}) => {
  return (
    <Modal {...props}>
      <ModalOverlay />
      <ModalContent>
        <ModalHeader display="flex" alignItems="center" gap={2}>
          Самокат {ping.scooter.number}
          <ScooterBatteryLevelBadge ping={ping} />
        </ModalHeader>
        <ModalCloseButton />
        <ModalFooter>
          <ScooterInfoActions
            w="100%"
            onStartRental={onStartRental}
            onBook={onBook}
            tariff={tariff}
            isBooking={isBooking}
            isStartingRental={isStartingRental}
          />
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
};

export { RentableScooterInfoModal };

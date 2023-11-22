import NiceModal, { useModal } from "@ebay/nice-modal-react";

import { Label, Modal, Typography } from "../../../components";
import { CreateBookingButton } from "../../bookings";
import { StartRideButton } from "../../rides";
import { Ping } from "../types/ping";

interface Props {
  ping: Ping;
}

const PingModal = NiceModal.create<Props>(({ ping }) => {
  const modal = useModal();

  return (
    <Modal
      title={ping.scooter.number}
      visible={modal.visible}
      onClose={modal.hide}
      buttons={[
        <StartRideButton
          onStarted={modal.hide}
          scooterId={ping.scooter.id}
          key="start"
        />,
        <CreateBookingButton
          onCreated={modal.hide}
          scooterId={ping.scooter.id}
          key="book"
        />,
      ]}
    >
      <Label title="Уровень заряда">
        <Typography.Heading level={3}>{ping.batteryLevel}%</Typography.Heading>
      </Label>
    </Modal>
  );
});

export { PingModal };

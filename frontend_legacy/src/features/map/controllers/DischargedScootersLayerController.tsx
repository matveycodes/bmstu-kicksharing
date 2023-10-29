import { ComponentProps, FC } from "react";
import NiceModal from "@ebay/nice-modal-react";

import { RentableScooterInfoModalController } from "features/scooters";

import { useBounds } from "../hooks/useBounds";

import { ScootersLayer } from "../views/ScootersLayer";
import { Ping, usePings } from "../../pings";

type Props = Omit<
  ComponentProps<typeof ScootersLayer>,
  "pings" | "onScooterClick"
>;

const DischargedScootersLayerController: FC<Props> = (props) => {
  const bounds = useBounds();

  const { data: pings = [] } = usePings(bounds, {
    keepPreviousData: true,
  });

  return (
    <ScootersLayer pings={pings} onScooterClick={onScooterClick} {...props} />
  );
};

const onScooterClick = (ping: Ping) => {
  void NiceModal.show(RentableScooterInfoModalController, { ping });
};

export { DischargedScootersLayerController };

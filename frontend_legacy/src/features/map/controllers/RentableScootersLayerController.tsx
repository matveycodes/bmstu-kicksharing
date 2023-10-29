import { ComponentProps, FC } from "react";
import NiceModal from "@ebay/nice-modal-react";

import { RentableScooterInfoModalController } from "features/scooters";

import { useZoom } from "../hooks/useZoom";
import { useBounds } from "../hooks/useBounds";

import { ScootersLayer } from "../views/ScootersLayer";
import { Ping, usePings } from "../../pings";

type Props = Omit<
  ComponentProps<typeof ScootersLayer>,
  "pings" | "onScooterClick"
>;

const RentableScootersLayerController: FC<Props> = (props) => {
  const zoom = useZoom();
  const bounds = useBounds();

  const shouldShowMarkers = zoom > 13;

  const { data: pings = [] } = usePings(bounds, {
    enabled: shouldShowMarkers,
    keepPreviousData: true,
  });

  if (!shouldShowMarkers) {
    return null;
  }

  return (
    <ScootersLayer pings={pings} onScooterClick={onScooterClick} {...props} />
  );
};

const onScooterClick = (ping: Ping) => {
  void NiceModal.show(RentableScooterInfoModalController, { ping });
};

export { RentableScootersLayerController };

import NiceModal from "@ebay/nice-modal-react";
import { keepPreviousData } from "@tanstack/react-query";

import { PingModal, usePings } from "../../pings";
import { Ping } from "../../pings/types/ping";
import { LAYERS_ORDER } from "../config/map";
import { useBounds } from "../hooks/useBounds";
import { useZoom } from "../hooks/useZoom";
import { Layer } from "../types/layers";
import { PingsLayerView } from "./PingsLayerView";

const PingsLayerController = () => {
  const bounds = useBounds();

  const zoom = useZoom();
  const shouldShow = zoom > 14;

  const { data: pings = [] } = usePings(bounds, {
    placeholderData: keepPreviousData,
    enabled: shouldShow,
  });

  if (!shouldShow) {
    return null;
  }

  return (
    <PingsLayerView
      pings={pings}
      style={{ zIndex: LAYERS_ORDER[Layer.Pings] }}
      onClick={onClick}
    />
  );
};

const onClick = (ping: Ping) => {
  void NiceModal.show(PingModal, { ping });
};

export { PingsLayerController };

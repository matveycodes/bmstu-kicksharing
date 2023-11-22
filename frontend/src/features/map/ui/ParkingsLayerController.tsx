import { keepPreviousData } from "@tanstack/react-query";

import { useParkings } from "../../parkings";
import { LAYERS_ORDER } from "../config/map";
import { useBounds } from "../hooks/useBounds";
import { useZoom } from "../hooks/useZoom";
import { Layer } from "../types/layers";
import { ParkingsLayerView } from "./ParkingsLayerView";

const ParkingsLayerController = () => {
  const bounds = useBounds();

  const zoom = useZoom();
  const shouldShow = zoom > 14;

  const { data: parkings = [] } = useParkings(bounds, {
    placeholderData: keepPreviousData,
    enabled: shouldShow,
  });

  if (!shouldShow) {
    return null;
  }

  return (
    <ParkingsLayerView
      parkings={parkings}
      style={{ zIndex: LAYERS_ORDER[Layer.Parkings] }}
    />
  );
};

export { ParkingsLayerController };

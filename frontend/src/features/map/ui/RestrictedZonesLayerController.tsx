import { keepPreviousData } from "@tanstack/react-query";

import { useRestrictedZones } from "../../restricted-zones";
import { LAYERS_ORDER } from "../config/map";
import { useBounds } from "../hooks/useBounds";
import { Layer } from "../types/layers";
import { RestrictedZonesLayerView } from "./RestrictedZonesLayerView";

const RestrictedZonesLayerController = () => {
  const bounds = useBounds();

  const { data: restrictedZones = [] } = useRestrictedZones(bounds, {
    placeholderData: keepPreviousData,
  });

  return (
    <RestrictedZonesLayerView
      style={{ zIndex: LAYERS_ORDER[Layer.RestrictedZones] }}
      restrictedZones={restrictedZones}
    />
  );
};

export { RestrictedZonesLayerController };

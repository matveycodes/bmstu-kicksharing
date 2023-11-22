import { ComponentProps } from "react";

import { Map } from "../../../components";
import { Layer } from "../types/layers";

const MAP_CONFIG: ComponentProps<typeof Map> = {
  center: [55.7558, 37.6173],
  zoom: 13,
};

const LAYERS_ORDER: Record<Layer, number> = {
  [Layer.Parkings]: 402,
  [Layer.RestrictedZones]: 402,
  [Layer.Pings]: 403,
};

export { LAYERS_ORDER, MAP_CONFIG };

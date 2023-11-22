import { useCallback, useState } from "react";
import { useMap, useMapEvent } from "react-leaflet";

import { GPSBounds } from "../../../types/gps-bounds";
import { getGPSBounds } from "../utils/map";

const useBounds = (): GPSBounds => {
  const map = useMap();

  const getBounds = useCallback(() => getGPSBounds(map), [map]);

  const [bounds, setBounds] = useState<GPSBounds>(getBounds);

  const updateBounds = useCallback(() => {
    const newBounds = getGPSBounds(map);
    setBounds(newBounds);
  }, [map, setBounds]);

  useMapEvent("moveend", updateBounds);

  return bounds;
};

export { useBounds };

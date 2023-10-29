import { useCallback, useEffect, useState } from "react";
import { useMap, useMapEvents } from "react-leaflet";

import { Bounds } from "../types/map";

const useBounds = () => {
  const map = useMap();

  const getBounds = useCallback(() => {
    const mapBounds = map.getBounds();

    const bottomLeft = mapBounds.getSouthWest();
    const topRight = mapBounds.getNorthEast();

    return {
      minLatitude: bottomLeft.lat,
      minLongitude: bottomLeft.lng,
      maxLatitude: topRight.lat,
      maxLongitude: topRight.lng,
    } as Bounds;
  }, [map]);

  const [bounds, setBounds] = useState<Bounds>(getBounds);

  const updateBounds = useCallback(() => {
    setBounds(getBounds());
  }, [getBounds]);

  useMapEvents({ moveend: updateBounds });

  useEffect(() => {
    updateBounds();
  }, [updateBounds]);

  return bounds;
};

export { useBounds };

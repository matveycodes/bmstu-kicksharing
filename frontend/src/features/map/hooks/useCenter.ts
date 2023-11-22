import { useCallback, useState } from "react";
import { useMap, useMapEvent } from "react-leaflet";

import { GPSLocation } from "../../../types/gps-location";

const useCenter = () => {
  const map = useMap();

  const getCenter = useCallback(() => {
    const center = map.getCenter();
    return { longitude: center.lng, latitude: center.lat } as GPSLocation;
  }, [map]);

  const [center, setCenter] = useState(() => getCenter());

  const updateCenter = useCallback(() => {
    const newCenter = getCenter();
    setCenter(newCenter);
  }, [getCenter]);

  useMapEvent("moveend", updateCenter);

  return center;
};

export { useCenter };

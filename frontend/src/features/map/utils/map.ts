import { Map } from "leaflet";

import { GPSBounds } from "../../../types/gps-bounds";

const getGPSBounds = (map: Map): GPSBounds => {
  const mapBounds = map.getBounds();

  const bottomLeft = mapBounds.getSouthWest();
  const topRight = mapBounds.getNorthEast();

  return {
    minLatitude: bottomLeft.lat,
    minLongitude: bottomLeft.lng,
    maxLatitude: topRight.lat,
    maxLongitude: topRight.lng,
  };
};

export { getGPSBounds };

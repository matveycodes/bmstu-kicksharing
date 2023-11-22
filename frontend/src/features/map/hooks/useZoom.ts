import { useCallback, useState } from "react";
import { useMap, useMapEvent } from "react-leaflet";

const useZoom = () => {
  const map = useMap();

  const [zoom, setZoom] = useState(map.getZoom());

  const updateZoom = useCallback(() => {
    const newZoom = map.getZoom();
    setZoom(newZoom);
  }, [map]);

  useMapEvent("zoomend", updateZoom);

  return zoom;
};

export { useZoom };

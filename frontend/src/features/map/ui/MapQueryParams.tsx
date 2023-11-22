import { FC, useEffect } from "react";
import { useMap } from "react-leaflet";
import {
  NumberParam,
  NumericObjectParam,
  useQueryParam,
  withDefault,
} from "use-query-params";

import { useCenter } from "../hooks/useCenter";
import { useZoom } from "../hooks/useZoom";

const MapQueryParams: FC = () => {
  const map = useMap();

  const mapZoom = useZoom();
  const mapCenter = useCenter();

  const [zoom, setZoom] = useQueryParam(
    "zoom",
    withDefault(NumberParam, mapZoom)
  );
  const [center, setCenter] = useQueryParam(
    "center",
    withDefault(NumericObjectParam, { ...mapCenter })
  );

  useEffect(() => {
    if (!center) {
      return void map.setZoom(zoom);
    }

    map.setView({ lat: center.latitude!, lng: center.longitude! }, zoom);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  useEffect(() => {
    setZoom(mapZoom);
  }, [mapZoom, setZoom]);

  useEffect(() => {
    setCenter({ ...mapCenter });
  }, [mapCenter, setCenter]);

  return null;
};

export { MapQueryParams };

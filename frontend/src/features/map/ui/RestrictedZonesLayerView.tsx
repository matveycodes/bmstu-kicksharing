import { FC } from "react";
import { Pane, PaneProps, Polygon, Tooltip } from "react-leaflet";

import { RestrictedZone } from "../../restricted-zones";
import { getRestrictedZonePathOptions } from "../utils/restricted-zones";

interface Props extends Omit<PaneProps, "name"> {
  restrictedZones: RestrictedZone[];
}

const RestrictedZonesLayerView: FC<Props> = ({ restrictedZones, ...props }) => {
  return (
    <Pane name="restricted-zones" {...props}>
      {restrictedZones.map((restrictedZone) => {
        const positions = restrictedZone.polygon.map((p) => {
          return { lat: p.latitude, lng: p.longitude };
        });

        return (
          <Polygon
            pathOptions={getRestrictedZonePathOptions(restrictedZone)}
            key={restrictedZone.id}
            positions={positions}
            opacity={0.4}
          >
            <Tooltip direction="top" pane="tooltipPane">
              В этой зоне максимальная скорость ограничена до{" "}
              {restrictedZone.speedLimit} км/ч.
            </Tooltip>
          </Polygon>
        );
      })}
    </Pane>
  );
};

export { RestrictedZonesLayerView };

import { ComponentProps, FC } from "react";
import { Marker, Pane, useMap } from "react-leaflet";
import L from "leaflet";
import MarkerClusterGroup from "react-leaflet-cluster";

import { Ping } from "features/pings";

import marker from "assets/images/icons/scooter.svg";

import { LAYERS_ORDER } from "../config/map";
import { Layer } from "../types/map";

interface Props extends Omit<ComponentProps<typeof Pane>, "name" | "children"> {
  pings: Ping[];
  onScooterClick?: (ping: Ping) => void;
}

const scooterIcon = new L.Icon({
  iconUrl: marker,
  iconRetinaUrl: marker,
  popupAnchor: [-0, -0],
  iconSize: [20, 23],
});

const ScootersLayer: FC<Props> = ({ pings, onScooterClick, ...props }) => {
  const map = useMap();

  const onBeforeScooterClick = (ping: Ping) => {
    onScooterClick?.(ping);

    setTimeout(() => {
      map.setView([ping.location.latitude, ping.location.longitude]);
    }, 500);
  };

  return (
    <Pane
      name="scooters"
      style={{ zIndex: LAYERS_ORDER[Layer.Scooters] }}
      {...props}
    >
      <MarkerClusterGroup chunkedLoading>
        {pings.map((ping) => (
          <Marker
            icon={scooterIcon}
            key={ping.scooter.id}
            position={[ping.location.latitude, ping.location.longitude]}
            eventHandlers={{ click: () => onBeforeScooterClick(ping) }}
          />
        ))}
      </MarkerClusterGroup>
    </Pane>
  );
};

export { ScootersLayer };

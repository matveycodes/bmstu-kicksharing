import L from "leaflet";
import { FC } from "react";
import { Marker, Pane, PaneProps, useMap } from "react-leaflet";
import MarkerClusterGroup from "react-leaflet-cluster";

import marker from "../../../assets/icons/scooter.svg";
import { Ping } from "../../pings/types/ping";
import { LAYERS_ORDER } from "../config/map";
import { Layer } from "../types/layers";

interface Props extends Omit<PaneProps, "name"> {
  pings: Ping[];
  onClick?: (ping: Ping) => void;
}

const scooterIcon = new L.Icon({
  iconUrl: marker,
  iconRetinaUrl: marker,
  popupAnchor: [-0, -0],
  iconSize: [20, 23],
});

const PingsLayerView: FC<Props> = ({ pings, onClick, ...props }) => {
  const map = useMap();

  const onBeforeClick = (ping: Ping) => {
    onClick?.(ping);

    setTimeout(() => {
      const { location } = ping;
      map.setView([location.latitude, location.longitude]);
    }, 500);
  };

  return (
    <Pane name="pings" style={{ zIndex: LAYERS_ORDER[Layer.Pings] }} {...props}>
      <MarkerClusterGroup chunkedLoading>
        {pings.map((ping) => (
          <Marker
            icon={scooterIcon}
            key={ping.date + ping.scooter.id}
            position={[ping.location.latitude, ping.location.longitude]}
            eventHandlers={{ click: () => onBeforeClick(ping) }}
          />
        ))}
      </MarkerClusterGroup>
    </Pane>
  );
};

export { PingsLayerView };

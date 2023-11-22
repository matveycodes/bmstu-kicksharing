import L from "leaflet";
import { FC } from "react";
import { Marker, Pane, PaneProps, Tooltip } from "react-leaflet";

import marker from "../../../assets/icons/parking.svg";
import { Parking } from "../../parkings";

interface Props extends Omit<PaneProps, "name"> {
  parkings: Parking[];
}

const parkingIcon = new L.Icon({
  iconUrl: marker,
  iconRetinaUrl: marker,
  popupAnchor: [-0, -0],
  iconSize: [10, 10],
});

const ParkingsLayerView: FC<Props> = ({ parkings, ...props }) => {
  return (
    <Pane name="parkings" {...props}>
      {parkings.map(({ id, location }) => (
        <Marker
          icon={parkingIcon}
          key={id}
          position={[location.latitude, location.longitude]}
        >
          <Tooltip direction="top" pane="tooltipPane">
            Это парковка. Здесь можно оставить самокат.
          </Tooltip>
        </Marker>
      ))}
    </Pane>
  );
};

export { ParkingsLayerView };

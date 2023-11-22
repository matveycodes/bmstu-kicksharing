import "leaflet/dist/leaflet.css";

import { FC } from "react";
import { MapContainer, MapContainerProps, TileLayer } from "react-leaflet";

const Map: FC<MapContainerProps> = ({ children, ...props }) => {
  return (
    <MapContainer attributionControl={false} zoomControl={false} {...props}>
      {children}
      <TileLayer url="https://{s}.tile.jawg.io/jawg-dark/{z}/{x}/{y}{r}.png?access-token=PyTJUlEU1OPJwCJlW1k0NC8JIt2CALpyuj7uc066O7XbdZCjWEL3WYJIk6dnXtps" />
    </MapContainer>
  );
};

export { Map };

import { ComponentProps, FC } from "react";

import { Map as MapContainer } from "../../../components";
import { useCurrentUser } from "../../user/hooks/useCurrentUser";
import { MAP_CONFIG } from "../config/map";
import { MapQueryParams } from "./MapQueryParams";
import { ParkingsLayerController } from "./ParkingsLayerController";
import { PingsLayerController } from "./PingsLayerController";
import { RestrictedZonesLayerController } from "./RestrictedZonesLayerController";

type Props = ComponentProps<typeof MapContainer>;

const Map: FC<Props> = (props) => {
  const { data: user } = useCurrentUser();

  return (
    <MapContainer {...MAP_CONFIG} {...props}>
      <RestrictedZonesLayerController />
      <ParkingsLayerController />
      {user && <PingsLayerController />}
      <MapQueryParams />
    </MapContainer>
  );
};

export { Map };

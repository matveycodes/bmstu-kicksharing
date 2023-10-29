import { Location } from "features/map";

interface RestrictedZone {
  id: string;
  speedLimit: number;
  polygon: Location[];
}

export { RestrictedZone };

import { PathOptions } from "leaflet";

import { RestrictedZone } from "../../restricted-zones";

const getRestrictedZonePathOptions = (
  restrictedZone: RestrictedZone,
): PathOptions => {
  if (restrictedZone.speedLimit === 0) {
    return { fill: true, fillColor: "red", color: "red" };
  }

  if (restrictedZone.speedLimit < 25) {
    return { fill: true, fillColor: "orange", color: "orange" };
  }

  return {};
};

export { getRestrictedZonePathOptions };

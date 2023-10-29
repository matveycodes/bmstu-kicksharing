interface Location {
  latitude: number;
  longitude: number;
}

interface Bounds {
  minLongitude: number;
  minLatitude: number;
  maxLongitude: number;
  maxLatitude: number;
}

const enum Layer {
  Parkings = "parkings",
  RestrictedZones = "restricted-zones",
  Scooters = "scooters",
}

export type { Location, Bounds };
export { Layer };

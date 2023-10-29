import { ParkingId } from "../models/parking";
import { GPSLocation } from "../types/gps-location";

interface CreateParkingModelDto {
  id: ParkingId;
  location: GPSLocation;
}

export { CreateParkingModelDto };

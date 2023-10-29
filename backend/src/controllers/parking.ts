import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateParkingControllerDto } from "../dto/create-parking-controller";
import { IParkingController } from "../interfaces/parking-controller";
import { IParkingService } from "../interfaces/parking-service";
import { ParkingId } from "../models/parking";

class ParkingController implements IParkingController {
  private _parkingService: IParkingService;

  public constructor(dto: CreateParkingControllerDto) {
    this._parkingService = dto.parkingService;
  }

  public getAll: RequestHandler = async (req, res) => {
    const response = await this._parkingService.getAll(req.pagination);
    res.status(StatusCodes.OK).json(response);
  };

  public get: RequestHandler = async (req, res) => {
    const response = await this._parkingService.get(req.params.id as ParkingId);
    res.status(StatusCodes.OK).json(response);
  };
}

export { ParkingController };

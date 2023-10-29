import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateParkingControllerDto } from "../dto/create-parking-controller";
import { IParkingController } from "../interfaces/parking-controller";
import { IParkingService } from "../interfaces/parking-service";
import { ParkingId } from "../models/parking";
import { BOUNDS_QUERY_SCHEMA } from "../validations/schemas/bounds";

class ParkingController implements IParkingController {
  private _parkingService: IParkingService;

  public constructor(dto: CreateParkingControllerDto) {
    this._parkingService = dto.parkingService;
  }

  public getAll: RequestHandler = async ({ pagination, query }, res) => {
    const bounds = await BOUNDS_QUERY_SCHEMA.parseAsync(query);
    const hasBounds = bounds.maxLatitude !== undefined;

    const response = hasBounds
      ? await this._parkingService.getWithinBoundsPaginated(bounds, pagination)
      : await this._parkingService.getAllPaginated(pagination);

    res.status(StatusCodes.OK).json(response);
  };

  public get: RequestHandler = async ({ params }, res) => {
    const id = params.id as ParkingId;
    const response = await this._parkingService.getById(id);
    res.status(StatusCodes.OK).json(response);
  };
}

export { ParkingController };

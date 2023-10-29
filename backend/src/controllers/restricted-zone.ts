import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateRestrictedZoneControllerDto } from "../dto/create-restricted-zone-controller";
import { IRestrictedZoneController } from "../interfaces/restricted-zone-controller";
import { IRestrictedZoneService } from "../interfaces/restricted-zone-service";
import { RestrictedZoneId } from "../models/restricted-zone";

class RestrictedZoneController implements IRestrictedZoneController {
  private _restrictedZoneService: IRestrictedZoneService;

  public constructor(dto: CreateRestrictedZoneControllerDto) {
    this._restrictedZoneService = dto.restrictedZoneService;
  }

  public getAll: RequestHandler = async (req, res) => {
    const response = await this._restrictedZoneService.getAll(req.pagination);
    res.status(StatusCodes.OK).json(response);
  };

  public get: RequestHandler = async (req, res) => {
    const response = await this._restrictedZoneService.get(
      req.params.id as RestrictedZoneId
    );
    res.status(StatusCodes.OK).json(response);
  };
}

export { RestrictedZoneController };

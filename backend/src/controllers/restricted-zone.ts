import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateRestrictedZoneControllerDto } from "../dto/create-restricted-zone-controller";
import { IRestrictedZoneController } from "../interfaces/restricted-zone-controller";
import { IRestrictedZoneService } from "../interfaces/restricted-zone-service";
import { RestrictedZoneId } from "../models/restricted-zone";
import { BOUNDS_QUERY_SCHEMA } from "../validations/schemas/bounds";

class RestrictedZoneController implements IRestrictedZoneController {
  private _restrictedZoneService: IRestrictedZoneService;

  public constructor(dto: CreateRestrictedZoneControllerDto) {
    this._restrictedZoneService = dto.restrictedZoneService;
  }

  public getAll: RequestHandler = async ({ pagination, query }, res) => {
    const bounds = await BOUNDS_QUERY_SCHEMA.parseAsync(query);
    const hasBounds = bounds.maxLatitude !== undefined;

    const response = hasBounds
      ? await this._restrictedZoneService.getWithinBoundsPaginated(
          bounds,
          pagination
        )
      : await this._restrictedZoneService.getAllPaginated(pagination);

    res.status(StatusCodes.OK).json(response);
  };

  public get: RequestHandler = async ({ params }, res) => {
    const id = params.id as RestrictedZoneId;
    const response = await this._restrictedZoneService.getById(id);
    res.status(StatusCodes.OK).json(response);
  };
}

export { RestrictedZoneController };

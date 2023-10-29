import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateHistoryControllerDto } from "../dto/create-history-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { IHistoryController } from "../interfaces/history-controller";
import { IRideSerializer } from "../interfaces/ride-serializer";
import { IRideService } from "../interfaces/ride-service";
import { RideId } from "../models/ride";
import { CREATE_HISTORY_ENTRY_BODY_SCHEMA } from "../validations/schemas/history";

class HistoryController implements IHistoryController {
  private _rideService: IRideService;
  private _rideSerializer: IRideSerializer;

  public constructor(dto: CreateHistoryControllerDto) {
    this._rideService = dto.rideService;
    this._rideSerializer = dto.rideSerializer;
  }

  public getAll: RequestHandler = async ({ user, pagination }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const { results, ...response } =
      await this._rideService.getFinishedPaginated(pagination);
    const serializedResponse = {
      ...response,
      results: await this._rideSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };

  public create: RequestHandler = async ({ user, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "customer") {
      throw new PermissionError();
    }

    const { rideId } = await CREATE_HISTORY_ENTRY_BODY_SCHEMA.parseAsync(body);

    const ride = await this._rideService.getById(rideId as RideId);

    if (ride.userId !== user.id) {
      throw new PermissionError();
    }

    await this._rideService.finish(rideId as RideId);
    res.status(StatusCodes.CREATED).end();
  };
}

export { HistoryController };

import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateRideControllerDto } from "../dto/create-ride-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { IRideController } from "../interfaces/ride-controller";
import { IRideSerializer } from "../interfaces/ride-serializer";
import { IRideService } from "../interfaces/ride-service";
import { RideId } from "../models/ride";
import { ScooterId } from "../models/scooter";
import {
  CREATE_RIDE_BODY_SCHEMA,
  GET_RIDES_QUERY_SCHEMA,
} from "../validations/schemas/ride";

class RideController implements IRideController {
  private _rideService: IRideService;
  private _rideSerializer: IRideSerializer;

  public constructor(dto: CreateRideControllerDto) {
    this._rideService = dto.rideService;
    this._rideSerializer = dto.rideSerializer;
  }

  public getAll: RequestHandler = async ({ user, pagination, query }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const { isActive } = await GET_RIDES_QUERY_SCHEMA.parseAsync(query);

    const { results, ...response } =
      isActive === true
        ? await this._rideService.getActivePaginated(pagination)
        : isActive === false
        ? await this._rideService.getFinishedPaginated(pagination)
        : await this._rideService.getAllPaginated(pagination);
    const serializedResponse = {
      ...response,
      results: await this._rideSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };

  public get: RequestHandler = async ({ user, params }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["admin", "customer"].includes(user.role)) {
      throw new PermissionError();
    }

    const id = params.id as RideId;
    const ride = await this._rideService.getById(id);

    if (user.role === "customer" && ride.userId !== user.id) {
      throw new PermissionError();
    }

    const serializedRide = await this._rideSerializer.serialize(ride);
    res.status(StatusCodes.OK).json(serializedRide);
  };

  public create: RequestHandler = async ({ user, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "customer") {
      throw new PermissionError();
    }

    const { scooterId } = await CREATE_RIDE_BODY_SCHEMA.parseAsync(body);

    await this._rideService.create(scooterId as ScooterId, user.id);

    res.status(StatusCodes.CREATED).end();
  };
}

export { RideController };

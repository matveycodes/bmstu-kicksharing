import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateScooterControllerDto } from "../dto/create-scooter-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { IScooterController } from "../interfaces/scooter-controller";
import { IScooterSerializer } from "../interfaces/scooter-serializer";
import { IScooterService } from "../interfaces/scooter-service";
import { ScooterId } from "../models/scooter";
import { UPDATE_SCOOTER_BODY_SCHEMA } from "../validations/schemas/scooter";

class ScooterController implements IScooterController {
  private _scooterService: IScooterService;
  private _scooterSerializer: IScooterSerializer;

  public constructor(dto: CreateScooterControllerDto) {
    this._scooterService = dto.scooterService;
    this._scooterSerializer = dto.scooterSerializer;
  }

  public get: RequestHandler = async ({ params, user }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["technician", "admin"].includes(user.role)) {
      throw new PermissionError();
    }

    const id = params.id as ScooterId;
    const scooter = await this._scooterService.getById(id);
    const serializedScooter = await this._scooterSerializer.serialize(scooter);
    res.status(StatusCodes.OK).json(serializedScooter);
  };

  public update: RequestHandler = async ({ user, body, params }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["technician", "admin"].includes(user.role)) {
      throw new PermissionError();
    }

    const id = params.id as ScooterId;
    const parsedBody = await UPDATE_SCOOTER_BODY_SCHEMA.parseAsync(body);
    await this._scooterService.update(id, parsedBody);

    res.status(StatusCodes.OK).end();
  };

  public getAll: RequestHandler = async ({ user, pagination }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["technician", "admin"].includes(user.role)) {
      throw new PermissionError();
    }

    const { results, ...response } = await this._scooterService.getAllPaginated(
      pagination
    );
    const serializedResponse = {
      ...response,
      results: await this._scooterSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };
}

export { ScooterController };

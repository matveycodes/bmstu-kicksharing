import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreatePingControllerDto } from "../dto/create-ping-controller";
import { UnauthorizedError } from "../errors/unauthorized";
import { IPingController } from "../interfaces/ping-controller";
import { IPingSerializer } from "../interfaces/ping-serializer";
import { IPingService } from "../interfaces/ping-service";
import { BOUNDS_QUERY_SCHEMA } from "../validations/schemas/bounds";
import { PaginatedResponse } from "../vo/pagination";
import { Ping } from "../vo/ping";

const USER_ROLE_WITHIN_BOUNDS_METHOD_MAPPING = {
  admin: "getWithinBoundsPaginated",
  technician: "getDischargedWithinBoundsPaginated",
  customer: "getRentableWithinBoundsPaginated",
} as const;

const USER_ROLE_METHOD_MAPPING = {
  admin: "getAllPaginated",
  technician: "getDischargedPaginated",
  customer: "getRentablePaginated",
} as const;

class PingController implements IPingController {
  private _pingService: IPingService;
  private _pingSerializer: IPingSerializer;

  public constructor(dto: CreatePingControllerDto) {
    this._pingService = dto.pingService;
    this._pingSerializer = dto.pingSerializer;
  }

  public getAll: RequestHandler = async ({ query, pagination, user }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const bounds = await BOUNDS_QUERY_SCHEMA.parseAsync(query);
    const hasBounds = bounds.maxLatitude !== undefined;

    let response: PaginatedResponse<Ping>;

    if (hasBounds) {
      const method = USER_ROLE_WITHIN_BOUNDS_METHOD_MAPPING[user.role];
      response = await this._pingService[method](bounds, pagination);
    } else {
      const method = USER_ROLE_METHOD_MAPPING[user.role];
      response = await this._pingService[method](pagination);
    }

    const serializedResponse = {
      ...response,
      results: await this._pingSerializer.serialize(response.results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };
}

export { PingController };

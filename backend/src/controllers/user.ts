import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateUserControllerDto } from "../dto/create-user-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { IBookingSerializer } from "../interfaces/booking-serializer";
import { IBookingService } from "../interfaces/booking-service";
import { IPurchaseSerializer } from "../interfaces/purchase-serializer";
import { IPurchaseService } from "../interfaces/purchase-service";
import { IRideSerializer } from "../interfaces/ride-serializer";
import { IRideService } from "../interfaces/ride-service";
import { IUserController } from "../interfaces/user-controller";
import { IUserService } from "../interfaces/user-service";
import { UserId } from "../models/user";
import {
  GET_USERS_QUERY_SCHEMA,
  UPDATE_CURRENT_USER_BODY_SCHEMA,
  UPDATE_USER_BODY_SCHEMA,
} from "../validations/schemas/user";

class UserController implements IUserController {
  private _userService: IUserService;
  private _bookingService: IBookingService;
  private _bookingSerializer: IBookingSerializer;
  private _purchaseService: IPurchaseService;
  private _purchaseSerializer: IPurchaseSerializer;
  private _rideService: IRideService;
  private _rideSerializer: IRideSerializer;

  public constructor(dto: CreateUserControllerDto) {
    this._userService = dto.userService;
    this._bookingSerializer = dto.bookingSerializer;
    this._bookingService = dto.bookingService;
    this._purchaseSerializer = dto.purchaseSerializer;
    this._purchaseService = dto.purchaseService;
    this._rideSerializer = dto.rideSerializer;
    this._rideService = dto.rideService;
  }

  public get: RequestHandler = async ({ params, user }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const id = params.id as UserId;

    if (user.role !== "admin" && id !== user.id) {
      throw new PermissionError();
    }

    const fetchedUser = await this._userService.getById(id);
    res.status(StatusCodes.OK).json(fetchedUser);
  };

  public getAll: RequestHandler = async ({ user, pagination, query }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const { search } = await GET_USERS_QUERY_SCHEMA.parseAsync(query);

    const response = search
      ? await this._userService.findAllPaginated(search, pagination)
      : await this._userService.getAllPaginated(pagination);
    res.status(StatusCodes.OK).json(response);
  };

  public getBookings: RequestHandler = async (
    { user, params, pagination },
    res
  ) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const id = params.id as UserId;

    if (user.role !== "admin" && id !== user.id) {
      throw new PermissionError();
    }

    const { results, ...response } =
      await this._bookingService.getActiveByUserIdPaginated(id, pagination);
    const serializedResponse = {
      ...response,
      results: await this._bookingSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };

  public getCurrent: RequestHandler = async ({ user }, res) => {
    if (!user) {
      throw new PermissionError();
    }

    res.status(StatusCodes.OK).json(user);
  };

  public getCurrentBookings: RequestHandler = async (req, res, next) => {
    if (!req.user) {
      throw new UnauthorizedError();
    }

    req.params.id = req.user.id;

    return this.getBookings(req, res, next);
  };

  public getCurrentPurchases: RequestHandler = async (req, res, next) => {
    if (!req.user) {
      throw new UnauthorizedError();
    }

    req.params.id = req.user.id;

    return this.getPurchases(req, res, next);
  };

  public getCurrentRides: RequestHandler = async (req, res, next) => {
    if (!req.user) {
      throw new UnauthorizedError();
    }

    req.params.id = req.user.id;

    return this.getRides(req, res, next);
  };

  public getPurchases: RequestHandler = async (
    { user, params, pagination },
    res
  ) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const id = params.id as UserId;

    if (user.role !== "admin" && user.id !== id) {
      throw new PermissionError();
    }

    const { results, ...response } =
      await this._purchaseService.getByUserIdPaginated(id, pagination);
    const serializedResponse = {
      ...response,
      results: await this._purchaseSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };

  public getRides: RequestHandler = async (
    { user, params, pagination },
    res
  ) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const id = params.id as UserId;

    if (user.role !== "admin" && user.id !== id) {
      throw new PermissionError();
    }

    const { results, ...response } =
      await this._rideService.getAllByUserIdPaginated(id, pagination);
    const serializedResponse = {
      ...response,
      results: await this._rideSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };

  public update: RequestHandler = async ({ user, params, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const id = params.id as UserId;

    if (user.role !== "admin" && id !== user.id) {
      throw new PermissionError();
    }

    const parsedBody = await UPDATE_USER_BODY_SCHEMA.parseAsync(body);
    await this._userService.update(id, parsedBody);
    res.status(StatusCodes.OK).end();
  };

  public updateCurrent: RequestHandler = async ({ user, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const parsedBody = await UPDATE_CURRENT_USER_BODY_SCHEMA.parseAsync(body);
    await this._userService.update(user.id, parsedBody);
    res.status(StatusCodes.OK).end();
  };

  public getCurrentHistory: RequestHandler = async (req, res, next) => {
    if (!req.user) {
      throw new UnauthorizedError();
    }

    req.params.id = req.user.id;

    return this.getHistory(req, res, next);
  };

  public getHistory: RequestHandler = async (
    { user, params, pagination },
    res
  ) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    const id = params.id as UserId;

    if (user.role !== "admin" && id !== user.id) {
      throw new PermissionError();
    }

    const { results, ...response } =
      await this._rideService.getFinishedByUserIdPaginated(id, pagination);
    const serializedResponse = {
      ...response,
      results: await this._rideSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };
}

export { UserController };

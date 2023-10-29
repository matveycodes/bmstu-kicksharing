import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateSubscriptionControllerDto } from "../dto/create-subscription-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { ISubscriptionController } from "../interfaces/subscription-controller";
import { ISubscriptionService } from "../interfaces/subscription-service";
import { SubscriptionId } from "../models/subscription";

class SubscriptionController implements ISubscriptionController {
  private _subscriptionService: ISubscriptionService;

  public constructor(dto: CreateSubscriptionControllerDto) {
    this._subscriptionService = dto.subscriptionService;
  }

  public getAll: RequestHandler = async ({ user, pagination }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["admin", "customer"].includes(user.role)) {
      throw new PermissionError();
    }

    const response = await this._subscriptionService.getAllPaginated(
      pagination
    );
    res.status(StatusCodes.OK).json(response);
  };

  public get: RequestHandler = async ({ user, params }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["admin", "customer"].includes(user.role)) {
      throw new PermissionError();
    }

    const id = params.id as SubscriptionId;
    const response = await this._subscriptionService.getById(id);
    res.status(StatusCodes.OK).json(response);
  };
}

export { SubscriptionController };

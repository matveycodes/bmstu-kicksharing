import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreatePurchaseControllerDto } from "../dto/create-purchase-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { IPurchaseController } from "../interfaces/purchase-controller";
import { IPurchaseSerializer } from "../interfaces/purchase-serializer";
import { IPurchaseService } from "../interfaces/purchase-service";
import { SubscriptionId } from "../models/subscription";
import { CREATE_PURCHASE_BODY_SCHEMA } from "../validations/schemas/purchase";

class PurchaseController implements IPurchaseController {
  private _purchaseService: IPurchaseService;
  private _purchaseSerializer: IPurchaseSerializer;

  public constructor(dto: CreatePurchaseControllerDto) {
    this._purchaseService = dto.purchaseService;
    this._purchaseSerializer = dto.purchaseSerializer;
  }

  public create: RequestHandler = async ({ user, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "customer") {
      throw new PermissionError();
    }

    const { subscriptionId } = await CREATE_PURCHASE_BODY_SCHEMA.parseAsync(
      body
    );

    await this._purchaseService.create(
      subscriptionId as SubscriptionId,
      user.id
    );

    res.status(StatusCodes.CREATED).end();
  };

  public getAll: RequestHandler = async ({ user, pagination }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const { results, ...response } =
      await this._purchaseService.getAllPaginated(pagination);
    const serializedResponse = {
      ...response,
      results: await this._purchaseSerializer.serialize(results),
    };
    res.status(StatusCodes.OK).json(serializedResponse);
  };
}

export { PurchaseController };

import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateTariffControllerDto } from "../dto/create-tariff-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { ITariffController } from "../interfaces/tariff-controller";
import { ITariffService } from "../interfaces/tariff-service";

class TariffController implements ITariffController {
  private _tariffService: ITariffService;

  public constructor(dto: CreateTariffControllerDto) {
    this._tariffService = dto.tariffService;
  }

  public get: RequestHandler = async ({ user }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (!["customer", "admin"].includes(user.role)) {
      throw new PermissionError();
    }

    const response = await this._tariffService.get();
    res.status(StatusCodes.OK).json(response);
  };
}

export { TariffController };

import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateAuthControllerDto } from "../dto/create-auth-controller";
import { IAuthController } from "../interfaces/auth-controller";
import { IAuthService } from "../interfaces/auth-service";
import {
  AUTH_PROCEED_BODY_SCHEMA,
  AUTH_REQUEST_BODY_SCHEMA,
} from "../validations/schemas/auth";

class AuthController implements IAuthController {
  private _authService: IAuthService;

  public constructor(dto: CreateAuthControllerDto) {
    this._authService = dto.authService;
  }

  public request: RequestHandler = async ({ body }, res) => {
    const { phone } = await AUTH_REQUEST_BODY_SCHEMA.parseAsync(body);
    const signature = await this._authService.request(phone);
    res.status(StatusCodes.OK).json({ signature });
  };

  public proceed: RequestHandler = async ({ body }, res) => {
    const { signature, code } = await AUTH_PROCEED_BODY_SCHEMA.parseAsync(body);
    const token = await this._authService.proceed(signature, code);
    res.status(StatusCodes.OK).json({ token });
  };
}

export { AuthController };

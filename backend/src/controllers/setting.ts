import { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";

import { CreateSettingControllerDto } from "../dto/create-setting-controller";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { ISettingController } from "../interfaces/setting-controller";
import { ISettingSerializer } from "../interfaces/setting-serializer";
import { ISettingService } from "../interfaces/setting-service";
import { SETTINGS_BODY_SCHEMA } from "../validations/schemas/setting";

class SettingController implements ISettingController {
  private _settingService: ISettingService;
  private _settingSerializer: ISettingSerializer;

  public constructor(dto: CreateSettingControllerDto) {
    this._settingService = dto.settingService;
    this._settingSerializer = dto.settingSerializer;
  }

  public getAll: RequestHandler = async ({ user }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const settings = await this._settingService.getAll();
    const response = this._settingSerializer.serialize(settings);
    res.status(StatusCodes.OK).json(response);
  };

  public update: RequestHandler = async ({ user, body }, res) => {
    if (!user) {
      throw new UnauthorizedError();
    }

    if (user.role !== "admin") {
      throw new PermissionError();
    }

    const settings = await SETTINGS_BODY_SCHEMA.parseAsync(body);

    await Promise.all(
      Object.entries(settings).map(([name, value]) => {
        return this._settingService.save({ name, value });
      })
    );

    res.status(StatusCodes.OK).end();
  };
}

export { SettingController };

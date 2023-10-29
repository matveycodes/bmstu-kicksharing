import { RequestHandler } from "express";

interface ISettingController {
  getAll: RequestHandler;
  update: RequestHandler;
}

export { ISettingController };

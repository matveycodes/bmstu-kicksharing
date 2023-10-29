import { RequestHandler } from "express";

interface IRestrictedZoneController {
  getAll: RequestHandler;
  get: RequestHandler;
}

export { IRestrictedZoneController };

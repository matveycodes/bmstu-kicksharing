import { RequestHandler } from "express";

interface IScooterController {
  getAll: RequestHandler;
  get: RequestHandler;
  update: RequestHandler;
}

export { IScooterController };

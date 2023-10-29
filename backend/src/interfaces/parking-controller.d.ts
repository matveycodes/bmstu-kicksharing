import { RequestHandler } from "express";

interface IParkingController {
  getAll: RequestHandler;
  get: RequestHandler;
}

export { IParkingController };

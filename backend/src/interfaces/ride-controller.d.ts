import { RequestHandler } from "express";

interface IRideController {
  getAll: RequestHandler;
  get: RequestHandler;
  create: RequestHandler;
}

export { IRideController };

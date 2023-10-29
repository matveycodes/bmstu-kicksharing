import { RequestHandler } from "express";

interface IPingController {
  getAll: RequestHandler;
}

export { IPingController };

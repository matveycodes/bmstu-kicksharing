import { RequestHandler } from "express";

interface IHistoryController {
  getAll: RequestHandler;
  create: RequestHandler;
}

export { IHistoryController };

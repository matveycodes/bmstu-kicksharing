import { RequestHandler } from "express";

interface IPurchaseController {
  create: RequestHandler;
  getAll: RequestHandler;
}

export { IPurchaseController };

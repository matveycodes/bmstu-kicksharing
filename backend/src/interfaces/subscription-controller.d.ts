import { RequestHandler } from "express";

interface ISubscriptionController {
  getAll: RequestHandler;
  get: RequestHandler;
}

export { ISubscriptionController };

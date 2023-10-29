import { RequestHandler } from "express";

interface IBookingController {
  getAll: RequestHandler;
  create: RequestHandler;
  get: RequestHandler;
  cancel: RequestHandler;
}

export { IBookingController };

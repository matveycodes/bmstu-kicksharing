import { RequestHandler } from "express";

interface IUserController {
  getAll: RequestHandler;
  get: RequestHandler;
  update: RequestHandler;
  getCurrent: RequestHandler;
  getCurrentHistory: RequestHandler;
  getHistory: RequestHandler;
  updateCurrent: RequestHandler;
  getBookings: RequestHandler;
  getCurrentBookings: RequestHandler;
  getRides: RequestHandler;
  getCurrentRides: RequestHandler;
  getPurchases: RequestHandler;
  getCurrentPurchases: RequestHandler;
}

export { IUserController };

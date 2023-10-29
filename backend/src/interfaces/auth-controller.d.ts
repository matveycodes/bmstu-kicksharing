import { RequestHandler } from "express";

interface IAuthController {
  request: RequestHandler;
  proceed: RequestHandler;
}

export { IAuthController };

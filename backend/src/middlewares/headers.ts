import { RequestHandler } from "express";

const headers = (): RequestHandler => async (_, res, next) => {
  res.append("Server", "Kicksharing");
  next();
};

export { headers };

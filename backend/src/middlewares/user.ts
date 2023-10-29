import { RequestHandler } from "express";

import { IAuthService } from "../interfaces/auth-service";
import { User } from "../models/user";

declare global {
  // eslint-disable-next-line @typescript-eslint/no-namespace
  namespace Express {
    export interface Request {
      user: User | null;
    }
  }
}

const user =
  (authService: IAuthService): RequestHandler =>
  async (req, _, next) => {
    req.user = null;

    if (req.token) {
      try {
        req.user = await authService.getUserByToken(req.token);
      } catch {
        /* noop */
      }
    }

    next();
  };

export { user };

import { RequestHandler } from "express";

import { ENV } from "../env";
import { MethodNotAllowedError } from "../errors/method-not-allowed";

const WRITE_METHODS = ["POST", "PUT", "DELETE", "PATCH"];

const readonly =
  (): RequestHandler =>
  ({ method }, _, next) => {
    if (ENV.IS_READONLY && WRITE_METHODS.includes(method)) {
      throw new MethodNotAllowedError();
    }

    next();
  };

export { readonly };

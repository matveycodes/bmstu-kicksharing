import { ErrorRequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { ZodError } from "zod";

import { UnknownError } from "../errors/unknown-error";

const errorHandler = (): ErrorRequestHandler => (err, req, res, next) => {
  if (err instanceof ZodError) {
    // const errors = err.issues.map(({ message, path }) => ({
    //   path: toPath(path.length === 1 ? path[0] : path).join(".") || null,
    //   message,
    // }));
    //
    // res.status(StatusCodes.BAD_REQUEST).json(new ValidationError(errors));
  } else {
    res.status(StatusCodes.INTERNAL_SERVER_ERROR).json(new UnknownError());
  }

  next(err);
};

export { errorHandler };

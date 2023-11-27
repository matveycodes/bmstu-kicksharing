import { ErrorRequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import toPath from "lodash/toPath";
import { ZodError } from "zod";

import { BadStateError } from "../errors/bad-state";
import { LimitError } from "../errors/limit";
import { NotFoundError } from "../errors/not-found";
import { PermissionError } from "../errors/permission";
import { UnauthorizedError } from "../errors/unauthorized";
import { ValidationError } from "../errors/validation";

interface ErrorResponse {
  type: string;
  errors: { message: string; path: string | null }[];
}

const handleZodError: ErrorRequestHandler = ({ issues }: ZodError, _, res) => {
  const errors = issues.map(({ message, path }) => ({
    path: toPath(path.length === 1 ? path[0] : path).join(".") || null,
    message: message || "Некорректное значение",
  }));

  const response: ErrorResponse = {
    type: "ValidationError",
    errors,
  };

  res.status(StatusCodes.BAD_REQUEST).json(response);
};

const handleBadStateError: ErrorRequestHandler = (
  { message }: BadStateError,
  _,
  res
) => {
  const response: ErrorResponse = {
    type: "BadStateError",
    errors: [{ message: message || "Неверное состояние сервера", path: null }],
  };

  res.status(StatusCodes.CONFLICT).json(response);
};

const handleLimitError: ErrorRequestHandler = (
  { message }: LimitError,
  _,
  res
) => {
  const response: ErrorResponse = {
    type: "LimitError",
    errors: [{ message: message || "Превышен лимит запросов", path: null }],
  };

  res.status(StatusCodes.TOO_MANY_REQUESTS).json(response);
};

const handleNotFoundError: ErrorRequestHandler = (
  { message }: NotFoundError,
  _,
  res
) => {
  const response: ErrorResponse = {
    type: "NotFoundError",
    errors: [{ message: message || "Не найдено", path: null }],
  };

  res.status(StatusCodes.NOT_FOUND).json(response);
};

const handlePermissionError: ErrorRequestHandler = (
  { message }: PermissionError,
  _,
  res
) => {
  const response: ErrorResponse = {
    type: "PermissionError",
    errors: [{ message: message || "Недостаточно прав", path: null }],
  };

  res.status(StatusCodes.FORBIDDEN).json(response);
};

const handleUnauthorizedError: ErrorRequestHandler = (
  { message }: UnauthorizedError,
  _,
  res
) => {
  const response: ErrorResponse = {
    type: "UnauthorizedError",
    errors: [{ message: message || "Нет доступа", path: null }],
  };

  res.status(StatusCodes.UNAUTHORIZED).json(response);
};

const handleValidationError: ErrorRequestHandler = (
  { message }: ValidationError,
  _,
  res
) => {
  const response: ErrorResponse = {
    type: "ValidationError",
    errors: [{ message: message || "Некорректные данные", path: null }],
  };

  res.status(StatusCodes.BAD_REQUEST).json(response);
};

const handleUnknownError: ErrorRequestHandler = (_, __, res) => {
  const response: ErrorResponse = {
    type: "UnknownError",
    errors: [{ message: "Произошла неизвестная ошибка", path: null }],
  };

  res.status(StatusCodes.INTERNAL_SERVER_ERROR).json(response);
};

const handleMethodNotAllowedError: ErrorRequestHandler = (_, __, res) => {
  const response: ErrorResponse = {
    type: "MethodNotAllowedError",
    errors: [{ message: "HTTP-метод не поддерживается", path: null }],
  };

  res.status(StatusCodes.METHOD_NOT_ALLOWED).json(response);
};

const ERROR_HANDLER_MAP: Record<string, ErrorRequestHandler> = {
  ZodError: handleZodError,
  BadStateError: handleBadStateError,
  LimitError: handleLimitError,
  NotFoundError: handleNotFoundError,
  PermissionError: handlePermissionError,
  UnauthorizedError: handleUnauthorizedError,
  ValidationError: handleValidationError,
  MethodNotAllowedError: handleMethodNotAllowedError,
};

const errorHandler = (): ErrorRequestHandler => (err, req, res, next) => {
  const handler =
    err instanceof Error
      ? ERROR_HANDLER_MAP[err.name] ?? handleUnknownError
      : handleUnknownError;

  handler(err, req, res, next);
  next(err);
};

export { errorHandler };

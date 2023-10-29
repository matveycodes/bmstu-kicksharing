import { RequestHandler } from "express";

import { PAGINATION_QUERY_SCHEMA } from "../validations/schemas/pagination";
import { PaginationRequest } from "../vo/pagination";

declare global {
  // eslint-disable-next-line @typescript-eslint/no-namespace
  namespace Express {
    export interface Request {
      pagination: PaginationRequest;
    }
  }
}

const pagination =
  (defaultPageSize: number): RequestHandler =>
  async (req, _, next) => {
    const parsedQuery = await PAGINATION_QUERY_SCHEMA.parseAsync(req.query);

    req.pagination = {
      page: parsedQuery.page ?? 1,
      pageSize: parsedQuery.pageSize ?? defaultPageSize,
    };

    next();
  };

export { pagination };

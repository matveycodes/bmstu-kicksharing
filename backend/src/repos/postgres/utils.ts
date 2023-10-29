import { QueryParam } from "pg-promise";

import { PaginatedResponse, PaginationRequest } from "../../vo/pagination";
import { PostgresPool } from "./pool";

const convertPaginationToLimitOffset = ({
  page,
  pageSize,
}: PaginationRequest) => {
  return { limit: pageSize, offset: (page - 1) * pageSize };
};

const selectWithPagination = async <TRow>(
  pool: PostgresPool,
  query: QueryParam,
  pagination: PaginationRequest,
  values?: object
): Promise<PaginatedResponse<TRow>> => {
  const { limit, offset } = convertPaginationToLimitOffset(pagination);

  const rows = await pool.manyOrNone<TRow & { count: string }>(query, {
    ...values,
    limit,
    offset,
  });

  const totalRowsCount = Number.parseInt(rows[0]?.count ?? 0);

  const totalPagesCount = Math.ceil(totalRowsCount / pagination.pageSize);

  const nextPage =
    pagination.page < totalPagesCount ? pagination.page + 1 : null;

  const previousPage =
    pagination.page > 1 ? Math.min(pagination.page - 1, totalPagesCount) : null;

  return {
    totalCount: totalRowsCount,
    nextPage,
    previousPage,
    results: rows,
  };
};

export { convertPaginationToLimitOffset, selectWithPagination };

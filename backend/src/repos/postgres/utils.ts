import { QueryParam } from "pg-promise";

import { PaginatedResponse, PaginationRequest } from "../../vo/pagination";
import { PostgresPool } from "./pool";

const convertPaginationToLimitOffset = ({
  page,
  pageSize,
}: PaginationRequest) => {
  return { limit: pageSize, offset: (page - 1) * pageSize };
};

const selectWithPagination = async <TValue>(
  pool: PostgresPool,
  query: QueryParam,
  pagination: PaginationRequest,
  values?: unknown[]
): Promise<PaginatedResponse<TValue>> => {
  const { limit, offset } = convertPaginationToLimitOffset(pagination);

  const result = await pool.one<{ count: string; rows: TValue[] | null }>(
    query,
    [...(values ?? []), limit, offset]
  );

  const totalCount = Number.parseInt(result.count);

  const hasNext = pagination.page * pagination.pageSize < totalCount;

  const hasPrevious =
    pagination.page > 1 &&
    (pagination.page - 1) * pagination.pageSize <= totalCount;

  return {
    totalCount,
    nextPage: hasNext ? pagination.page + 1 : null,
    previousPage: hasPrevious ? pagination.page - 1 : null,
    results: result.rows ?? [],
  };
};

export { convertPaginationToLimitOffset, selectWithPagination };

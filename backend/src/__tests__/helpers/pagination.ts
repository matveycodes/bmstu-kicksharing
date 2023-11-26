import chunk from "lodash/chunk";

import { PaginatedResponse, PaginationRequest } from "../../vo/pagination";

const createPaginatedResponse = <TItem>(
  source: TItem[],
  pagination: PaginationRequest
): PaginatedResponse<TItem> => {
  const paginated = chunk(source, pagination.pageSize);

  const nextPage =
    pagination.page < paginated.length ? pagination.page + 1 : null;

  const previousPage =
    pagination.page > 1
      ? Math.min(pagination.page - 1, paginated.length)
      : null;

  return {
    totalCount: source.length,
    nextPage,
    previousPage,
    results: paginated[pagination.page - 1] ?? [],
  };
};

export { createPaginatedResponse };

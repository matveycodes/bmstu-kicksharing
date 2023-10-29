type Response<T> = T;

interface PaginatedResponse<T> {
  totalCount: number;
  previousPage: number | null;
  nextPage: number | null;
  results: T[];
}

export { Response, PaginatedResponse };

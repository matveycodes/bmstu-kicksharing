type Response<TData> = TData;

interface PaginatedResponse<TItem> {
  totalCount: number;
  nextPage: number | null;
  previousPage: number | null;
  results: TItem[];
}

interface ErrorResponse {
  type: string;
  errors: { path: string | null; message: string }[];
}

export { ErrorResponse, PaginatedResponse, Response };

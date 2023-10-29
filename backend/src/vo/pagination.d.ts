interface PaginationRequest {
  pageSize: number;
  page: number;
}

interface PaginatedResponse<TValue> {
  totalCount: number;
  nextPage: number | null;
  previousPage: number | null;
  results: TValue[];
}

export { PaginatedResponse, PaginationRequest };

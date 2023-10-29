import { PaginatedResponse, Response } from "features/api";

import { Rental } from "./rental";

interface StartRentalBody {
  scooterId: string;
}

type GetActiveRentalsResponse = PaginatedResponse<Rental>;

type GetRentalsHistoryResponse = PaginatedResponse<Rental>;

export { StartRentalBody, GetActiveRentalsResponse, GetRentalsHistoryResponse };

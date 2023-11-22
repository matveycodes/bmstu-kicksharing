import { PaginatedResponse, PaginationParams } from "../../api";
import { Purchase } from "./purchase";

type GetPurchasesParams = PaginationParams;

type GetPurchasesResponse = PaginatedResponse<Purchase>;

export { GetPurchasesParams, GetPurchasesResponse };

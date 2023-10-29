import { UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";
import { Purchase } from "../vo/purchase";

interface IPurchaseRepo {
  save(purchase: Purchase): Promise<void>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Purchase>>;
  getByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Purchase>>;
  getLastActiveByUserId(userId: UserId): Promise<Purchase | null>;
}

export { IPurchaseRepo };

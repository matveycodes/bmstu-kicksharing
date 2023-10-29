import { SubscriptionId } from "../models/subscription";
import { UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";
import { Purchase } from "../vo/purchase";

interface IPurchaseService {
  create(subscriptionId: SubscriptionId, userId: UserId): Promise<void>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Purchase>>;
  getByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Purchase>>;
}

export { IPurchaseService };

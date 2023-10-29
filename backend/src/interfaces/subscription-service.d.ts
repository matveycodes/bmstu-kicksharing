import { Subscription, SubscriptionId } from "../models/subscription";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface ISubscriptionService {
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Subscription>>;
  getById(id: SubscriptionId): Promise<Subscription>;
}

export { ISubscriptionService };

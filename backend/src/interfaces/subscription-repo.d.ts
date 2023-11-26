import { Subscription, SubscriptionId } from "../models/subscription";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface ISubscriptionRepo {
  nextId(): SubscriptionId;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<Subscription>>;
  getById(id: SubscriptionId): Promise<Subscription>;
  save(subscription: Subscription): Promise<void>;
}

export { ISubscriptionRepo };

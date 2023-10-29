import { CreateSubscriptionServiceDto } from "../dto/create-subscription-service";
import { ISubscriptionRepo } from "../interfaces/subscription-repo";
import { ISubscriptionService } from "../interfaces/subscription-service";
import { SubscriptionId } from "../models/subscription";
import { PaginationRequest } from "../vo/pagination";

class SubscriptionService implements ISubscriptionService {
  private _subscriptionRepo: ISubscriptionRepo;

  public constructor(dto: CreateSubscriptionServiceDto) {
    this._subscriptionRepo = dto.subscriptionRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._subscriptionRepo.getAllPaginated(pagination);
  }

  public async getById(id: SubscriptionId) {
    return this._subscriptionRepo.getById(id);
  }
}

export { SubscriptionService };

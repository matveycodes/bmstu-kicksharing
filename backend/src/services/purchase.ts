import dayjs from "dayjs";

import { CreatePurchaseServiceDto } from "../dto/create-purchase-service";
import { PermissionError } from "../errors/permission";
import { IBillingGateway } from "../interfaces/billing-gateway";
import { IPurchaseRepo } from "../interfaces/purchase-repo";
import { IPurchaseService } from "../interfaces/purchase-service";
import { ISubscriptionRepo } from "../interfaces/subscription-repo";
import { IUserRepo } from "../interfaces/user-repo";
import { SubscriptionId } from "../models/subscription";
import { UserId } from "../models/user";
import { PaginationRequest } from "../vo/pagination";
import { Purchase } from "../vo/purchase";

class PurchaseService implements IPurchaseService {
  private _purchaseRepo: IPurchaseRepo;
  private _billingGateway: IBillingGateway;
  private _subscriptionRepo: ISubscriptionRepo;
  private _userRepo: IUserRepo;

  public constructor(dto: CreatePurchaseServiceDto) {
    this._purchaseRepo = dto.purchaseRepo;
    this._billingGateway = dto.billingGateway;
    this._subscriptionRepo = dto.subscriptionRepo;
    this._userRepo = dto.userRepo;
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._purchaseRepo.getAllPaginated(pagination);
  }

  private async ensureUserCanPurchase(userId: UserId) {
    const user = await this._userRepo.getById(userId);

    if (!user.isActive) {
      throw new PermissionError(
        "Только активный пользователь может совершать покупки"
      );
    }
  }

  public async create(subscriptionId: SubscriptionId, userId: UserId) {
    await this.ensureUserCanPurchase(userId);

    const [subscription, lastActivePurchase] = await Promise.all([
      this._subscriptionRepo.getById(subscriptionId),
      this._purchaseRepo.getLastActiveByUserId(userId),
    ]);

    const dateStarted = lastActivePurchase?.dateFinished ?? new Date();
    const dateFinished = dayjs(dateStarted)
      .add(subscription.duration, "seconds")
      .toDate();

    const purchase: Purchase = {
      subscriptionId,
      userId,
      datePurchased: new Date(),
      dateStarted,
      dateFinished,
    };

    await this._billingGateway.charge(userId, subscription.price);
    await this._purchaseRepo.save(purchase);
  }

  public async getByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    return this._purchaseRepo.getByUserIdPaginated(userId, pagination);
  }
}

export { PurchaseService };

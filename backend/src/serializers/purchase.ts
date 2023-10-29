import { CreatePurchaseSerializerDto } from "../dto/create-purchase-serializer";
import { IPurchaseSerializer } from "../interfaces/purchase-serializer";
import { ISubscriptionRepo } from "../interfaces/subscription-repo";
import { IUserRepo } from "../interfaces/user-repo";
import { Purchase } from "../vo/purchase";

class PurchaseSerializer implements IPurchaseSerializer {
  private _userRepo: IUserRepo;
  private _subscriptionRepo: ISubscriptionRepo;

  public constructor(dto: CreatePurchaseSerializerDto) {
    this._userRepo = dto.userRepo;
    this._subscriptionRepo = dto.subscriptionRepo;
  }

  public async serialize(source: Purchase | Purchase[]) {
    return Array.isArray(source)
      ? this.serializeMany(source)
      : this.serializeOne(source);
  }

  private async serializeOne({
    userId,
    subscriptionId,
    ...purchase
  }: Purchase) {
    const [user, subscription] = await Promise.all([
      this._userRepo.getById(userId),
      this._subscriptionRepo.getById(subscriptionId),
    ]);

    return { ...purchase, user, subscription };
  }

  private async serializeMany(purchases: Purchase[]) {
    return Promise.all(purchases.map(this.serializeOne.bind(this)));
  }
}

export { PurchaseSerializer };

import orderBy from "lodash/orderBy";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { IPurchaseRepo } from "../../interfaces/purchase-repo";
import { UserId } from "../../models/user";
import { PaginationRequest } from "../../vo/pagination";
import { Purchase } from "../../vo/purchase";

class PurchaseMockRepo implements IPurchaseRepo {
  private _purchases: Purchase[] = [];

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._purchases, pagination);
  }

  private getByUserId(userId: UserId) {
    return this._purchases.filter((p) => p.userId === userId);
  }

  public async getByUserIdPaginated(
    userId: UserId,
    pagination: PaginationRequest
  ) {
    const purchases = this.getByUserId(userId);
    return createPaginatedResponse(purchases, pagination);
  }

  public async getLastActiveByUserId(userId: UserId) {
    const purchases = this.getByUserId(userId);
    return purchases[0] ?? null;
  }

  public async save(purchase: Purchase) {
    this._purchases.push(purchase);
    this._purchases = orderBy(this._purchases, ["date_purchased"], ["desc"]);
  }
}

export { PurchaseMockRepo };

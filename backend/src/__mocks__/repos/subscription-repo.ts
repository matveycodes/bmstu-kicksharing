import * as crypto from "crypto";
import orderBy from "lodash/orderBy";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { NotFoundError } from "../../errors/not-found";
import { ISubscriptionRepo } from "../../interfaces/subscription-repo";
import { Subscription, SubscriptionId } from "../../models/subscription";
import { PaginationRequest } from "../../vo/pagination";

class SubscriptionMockRepo implements ISubscriptionRepo {
  private _subscriptions: Subscription[] = [];

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._subscriptions, pagination);
  }

  public async getById(id: SubscriptionId) {
    const subscription = this._subscriptions.find((s) => s.id === id);

    if (!subscription) {
      throw new NotFoundError("Подписка не найдена");
    }

    return subscription;
  }

  public nextId() {
    return crypto.randomUUID() as SubscriptionId;
  }

  public async save(subscription: Subscription) {
    this.remove(subscription.id);
    this._subscriptions.push(subscription);
    this._subscriptions = orderBy(this._subscriptions, ["duration"], ["asc"]);
  }

  private remove(subscriptionId: SubscriptionId) {
    this._subscriptions = this._subscriptions.filter(
      (s) => s.id !== subscriptionId
    );
  }
}

export { SubscriptionMockRepo };

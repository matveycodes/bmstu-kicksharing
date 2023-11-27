import { BillingMockGateway } from "../../../__mocks__/gateways/billing";
import { PurchaseMockRepo } from "../../../__mocks__/repos/purchase-repo";
import { SubscriptionMockRepo } from "../../../__mocks__/repos/subscription-repo";
import { UserMockRepo } from "../../../__mocks__/repos/user-repo";
import { PermissionError } from "../../../errors/permission";
import { PurchaseService } from "../../../services/purchase";
import { SubscriptionBuilder } from "../../builders/subscription";
import { UserMother } from "../../mothers/user";

const getMocks = () => {
  const userRepo = new UserMockRepo();
  const subscriptionRepo = new SubscriptionMockRepo();
  const purchaseRepo = new PurchaseMockRepo();

  const billingGateway = new BillingMockGateway();

  const purchaseService = new PurchaseService({
    userRepo,
    subscriptionRepo,
    purchaseRepo,
    billingGateway,
  });

  return {
    userRepo,
    subscriptionRepo,
    purchaseRepo,
    billingGateway,
    purchaseService,
  };
};

describe("PurchaseService", () => {
  describe("Покупка (create)", () => {
    it("Бросается исключение, если пользователь неактивен", async () => {
      // Arrange
      const { userRepo, purchaseService, subscriptionRepo } = getMocks();

      const user = UserMother.aBlockedCustomer().build();
      await userRepo.save(user);

      const subscription = new SubscriptionBuilder().build();
      await subscriptionRepo.save(subscription);

      // Act
      const purchasePromise = purchaseService.create(subscription.id, user.id);

      // Assert
      await expect(purchasePromise).rejects.toThrow(PermissionError);
    });

    it("Успешно создается покупка", async () => {
      // Arrange
      const { userRepo, purchaseService, subscriptionRepo, purchaseRepo } =
        getMocks();

      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const subscription = new SubscriptionBuilder().build();
      await subscriptionRepo.save(subscription);

      // Act
      await purchaseService.create(subscription.id, user.id);

      // Assert
      const purchase = await purchaseRepo.getLastActiveByUserId(user.id);
      expect(purchase).toHaveProperty("subscriptionId", subscription.id);
    });
  });
});

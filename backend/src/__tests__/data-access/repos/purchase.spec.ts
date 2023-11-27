import { createPostgresPool } from "../../../repos/postgres/pool";
import { PurchasePostgresRepo } from "../../../repos/postgres/purchase/repo";
import { SubscriptionPostgresRepo } from "../../../repos/postgres/subscription/repo";
import { UserPostgresRepo } from "../../../repos/postgres/user/repo";
import { PurchaseBuilder } from "../../builders/purchase";
import { SubscriptionBuilder } from "../../builders/subscription";
import { PurchaseMother } from "../../mothers/purchase";
import { UserMother } from "../../mothers/user";

const pool = createPostgresPool();

const userRepo = new UserPostgresRepo(pool);
const purchaseRepo = new PurchasePostgresRepo(pool);
const subscriptionRepo = new SubscriptionPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE purchases, users, subscriptions CASCADE");
});

describe("PurchasePostgresRepo", () => {
  describe("Сохранение покупки (save)", () => {
    it("Успешно сохраняется покупка", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const subscription = new SubscriptionBuilder().build();
      await subscriptionRepo.save(subscription);

      const purchase = new PurchaseBuilder()
        .withSubscriptionId(subscription.id)
        .withUserId(user.id)
        .build();

      // Act
      const savePromise = purchaseRepo.save(purchase);

      // Assert
      await expect(savePromise).resolves.not.toThrow();
    });
  });

  describe("Получение последней действующей покупки по ID пользователя (getLastActiveByUserId)", () => {
    it("Возвращается null, если у пользователя нет действующих покупок", async () => {
      // Act
      const getPromise = purchaseRepo.getLastActiveByUserId(userRepo.nextId());

      // Assert
      await expect(getPromise).resolves.toBeNull();
    });

    it("Возвращается последняя действующая покупка", async () => {
      // Arrange
      const user = UserMother.anActiveCustomer().build();
      await userRepo.save(user);

      const subscription = new SubscriptionBuilder().build();
      await subscriptionRepo.save(subscription);

      const activePurchase = PurchaseMother.anActivePurchase()
        .withSubscriptionId(subscription.id)
        .withUserId(user.id)
        .build();
      await purchaseRepo.save(activePurchase);

      const finishedPurchase = PurchaseMother.aFinishedPurchase()
        .withSubscriptionId(subscription.id)
        .withUserId(user.id)
        .build();
      await purchaseRepo.save(finishedPurchase);

      // Act
      const getPromise = purchaseRepo.getLastActiveByUserId(user.id);

      // Assert
      await expect(getPromise).resolves.toEqual(activePurchase);
    });
  });
});

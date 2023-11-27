import range from "lodash/range";

import { NotFoundError } from "../../../errors/not-found";
import { createPostgresPool } from "../../../repos/postgres/pool";
import { SubscriptionPostgresRepo } from "../../../repos/postgres/subscription/repo";
import { SubscriptionBuilder } from "../../builders/subscription";

const pool = createPostgresPool();

const subscriptionRepo = new SubscriptionPostgresRepo(pool);

afterEach(async () => {
  await pool.query("TRUNCATE subscriptions CASCADE");
});

describe("SubscriptionPostgresRepo", () => {
  describe("Получение списка подписок (getAllPaginated)", () => {
    it("Возвращается пустой массив, если подписок нет", async () => {
      // Act
      const getPromise = subscriptionRepo.getAllPaginated({
        page: 1,
        pageSize: 1,
      });

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: 0,
        nextPage: null,
        previousPage: null,
        results: [],
      });
    });

    it("Возвращаются подписки", async () => {
      // Arrange
      const subscriptions = range(3).map((i) =>
        new SubscriptionBuilder().withDuration(60 * (i + 1)).build()
      );
      await Promise.all(subscriptions.map((s) => subscriptionRepo.save(s)));

      // Act
      const getPromise = subscriptionRepo.getAllPaginated({
        page: 1,
        pageSize: subscriptions.length,
      });

      // Assert
      await expect(getPromise).resolves.toEqual({
        totalCount: subscriptions.length,
        nextPage: null,
        previousPage: null,
        results: subscriptions,
      });
    });
  });

  describe("Получение подписки по ID (getById)", () => {
    it("Бросается исключение, если подписка с указанным ID не найдена", async () => {
      // Act
      const getPromise = subscriptionRepo.getById(subscriptionRepo.nextId());

      // Assert
      await expect(getPromise).rejects.toThrow(NotFoundError);
    });

    it("Успешно возвращается подписка", async () => {
      // Arrange
      const subscription = new SubscriptionBuilder().build();
      await subscriptionRepo.save(subscription);

      // Act
      const getPromise = subscriptionRepo.getById(subscription.id);

      // Assert
      await expect(getPromise).resolves.toEqual(subscription);
    });
  });
});

import { Router } from "express";

import { ISubscriptionController } from "../interfaces/subscription-controller";

const subscriptionRouter = (controller: ISubscriptionController) => {
  const router = Router();

  router.get("/subscriptions/:id", controller.get.bind(controller));
  router.get("/subscriptions", controller.getAll.bind(controller));

  return router;
};

export { subscriptionRouter };

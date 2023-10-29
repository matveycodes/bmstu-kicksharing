import { Router } from "express";

import { IPurchaseController } from "../interfaces/purchase-controller";

const purchaseRouter = (controller: IPurchaseController) => {
  const router = Router();

  router.get("/purchases", controller.getAll.bind(controller));
  router.post("/purchases", controller.create.bind(controller));

  return router;
};

export { purchaseRouter };

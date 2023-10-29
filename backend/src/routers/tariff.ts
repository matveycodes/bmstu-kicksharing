import { Router } from "express";

import { ITariffController } from "../interfaces/tariff-controller";

const tariffRouter = (controller: ITariffController) => {
  const router = Router();

  router.get("/tariff", controller.get.bind(controller));

  return router;
};

export { tariffRouter };

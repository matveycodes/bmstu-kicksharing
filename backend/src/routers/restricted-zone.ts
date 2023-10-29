import { Router } from "express";

import { IRestrictedZoneController } from "../interfaces/restricted-zone-controller";

const restrictedZoneRouter = (controller: IRestrictedZoneController) => {
  const router = Router();

  router.get("/restricted-zones/:id", controller.get.bind(controller));
  router.get("/restricted-zones", controller.getAll.bind(controller));

  return router;
};

export { restrictedZoneRouter };

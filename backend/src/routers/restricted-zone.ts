import { Router } from "express";

import { IRestrictedZoneController } from "../interfaces/restricted-zone-controller";

const restrictedZoneRouter = (controller: IRestrictedZoneController) => {
  const router = Router();

  router.use("/restricted-zones/:id", controller.get.bind(controller));
  router.use("/restricted-zones", controller.getAll.bind(controller));

  return router;
};

export { restrictedZoneRouter };

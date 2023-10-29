import { Router } from "express";

import { IScooterController } from "../interfaces/scooter-controller";

const scooterRouter = (controller: IScooterController) => {
  const router = Router();

  router.get("/scooters/:id", controller.get.bind(controller));
  router.patch("/scooters/:id", controller.update.bind(controller));
  router.get("/scooters", controller.getAll.bind(controller));

  return router;
};

export { scooterRouter };

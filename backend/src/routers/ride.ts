import { Router } from "express";

import { IRideController } from "../interfaces/ride-controller";

const rideRouter = (controller: IRideController) => {
  const router = Router();

  router.get("/rides/:id", controller.get.bind(controller));
  router.get("/rides", controller.getAll.bind(controller));
  router.post("/rides", controller.create.bind(controller));

  return router;
};

export { rideRouter };

import { Router } from "express";

import { IParkingController } from "../interfaces/parking-controller";

const parkingRouter = (controller: IParkingController) => {
  const router = Router();

  router.get("/parkings/:id", controller.get.bind(controller));
  router.get("/parkings", controller.getAll.bind(controller));

  return router;
};

export { parkingRouter };

import { Router } from "express";

import { IParkingController } from "../interfaces/parking-controller";

const parkingRouter = (controller: IParkingController) => {
  const router = Router();

  router.use("/parkings/:id", controller.get.bind(controller));
  router.use("/parkings", controller.getAll.bind(controller));

  return router;
};

export { parkingRouter };

import { Router } from "express";

import { IPingController } from "../interfaces/ping-controller";

const pingRouter = (controller: IPingController) => {
  const router = Router();

  router.get("/pings", controller.getAll.bind(controller));

  return router;
};

export { pingRouter };

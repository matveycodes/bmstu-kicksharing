import { Router } from "express";

import { IHistoryController } from "../interfaces/history-controller";

const historyRouter = (controller: IHistoryController) => {
  const router = Router();

  router.get("/history", controller.getAll.bind(controller));
  router.post("/history", controller.create.bind(controller));

  return router;
};

export { historyRouter };

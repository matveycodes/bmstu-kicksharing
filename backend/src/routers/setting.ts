import { Router } from "express";

import { ISettingController } from "../interfaces/setting-controller";

const settingRouter = (controller: ISettingController) => {
  const router = Router();

  router.get("/settings", controller.getAll.bind(controller));
  router.patch("/settings", controller.update.bind(controller));

  return router;
};

export { settingRouter };

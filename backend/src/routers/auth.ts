import { Router } from "express";

import { IAuthController } from "../interfaces/auth-controller";

const authRouter = (controller: IAuthController) => {
  const router = Router();

  router.post("/auth/request", controller.request.bind(controller));
  router.post("/auth/proceed", controller.proceed.bind(controller));

  return router;
};

export { authRouter };

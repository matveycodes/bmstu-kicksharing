import { Router } from "express";

import { IUserController } from "../interfaces/user-controller";

const userRouter = (controller: IUserController) => {
  const router = Router();

  router.get("/users/current", controller.getCurrent.bind(controller));
  router.patch("/users/current", controller.updateCurrent.bind(controller));
  router.get(
    "/users/current/bookings",
    controller.getCurrentBookings.bind(controller)
  );
  router.get(
    "/users/current/rides",
    controller.getCurrentRides.bind(controller)
  );
  router.get(
    "/users/current/history",
    controller.getCurrentHistory.bind(controller)
  );
  router.get(
    "/users/current/purchases",
    controller.getCurrentPurchases.bind(controller)
  );
  router.get("/users/:id/bookings", controller.getBookings.bind(controller));
  router.get("/users/:id/rides", controller.getRides.bind(controller));
  router.get("/users/:id/history", controller.getHistory.bind(controller));
  router.get("/users/:id/purchases", controller.getPurchases.bind(controller));
  router.get("/users/:id", controller.get.bind(controller));
  router.patch("/users/:id", controller.update.bind(controller));
  router.get("/users", controller.getAll.bind(controller));

  return router;
};

export { userRouter };

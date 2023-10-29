import { Router } from "express";

import { IBookingController } from "../interfaces/booking-controller";

const bookingRouter = (controller: IBookingController) => {
  const router = Router();

  router.get("/bookings/:id", controller.get.bind(controller));
  router.delete("/bookings/:id", controller.cancel.bind(controller));
  router.get("/bookings", controller.getAll.bind(controller));
  router.post("/bookings", controller.create.bind(controller));

  return router;
};

export { bookingRouter };

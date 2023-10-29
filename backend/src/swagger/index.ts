import { Router } from "express";
import swaggerUi from "swagger-ui-express";

import swaggerDocument from "./definition.json";

const swagger = () => {
  const router = Router();

  router.use("/", swaggerUi.serve, swaggerUi.setup(swaggerDocument));

  return router;
};

export { swagger };

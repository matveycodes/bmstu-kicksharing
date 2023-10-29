import { Router } from "express";
import swaggerUi from "swagger-ui-express";

import { SWAGGER_OPTIONS } from "./config";
import swaggerDocument from "./definition.json";

const swagger = () => {
  const router = Router();

  router.use(
    "/",
    swaggerUi.serve,
    swaggerUi.setup(swaggerDocument, { swaggerOptions: SWAGGER_OPTIONS })
  );

  return router;
};

export { swagger };

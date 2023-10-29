// eslint-disable-next-line simple-import-sort/imports
import express from "express";
import "express-async-errors";
import bearerToken from "express-bearer-token";

import { CONFIG } from "./config";
import { ParkingController } from "./controllers/parking";
import { RestrictedZoneController } from "./controllers/restricted-zone";
import { errorHandler } from "./middlewares/error";
import { pagination } from "./middlewares/pagination";
import { ParkingPostgresRepo } from "./repos/postgres/parking/repo";
import { createPostgresPool } from "./repos/postgres/pool";
import { RestrictedZonePostgresRepo } from "./repos/postgres/restricted-zone/repo";
import { parkingRouter } from "./routers/parking";
import { restrictedZoneRouter } from "./routers/restricted-zone";
import { ParkingService } from "./services/parking";
import { RestrictedZoneService } from "./services/restricted-zone";
import { swagger } from "./swagger";

const app = express();

const postgresPool = createPostgresPool();

const parkingRepo = new ParkingPostgresRepo(postgresPool);
const parkingService = new ParkingService({ parkingRepo });
const parkingController = new ParkingController({ parkingService });

const restrictedZoneRepo = new RestrictedZonePostgresRepo(postgresPool);
const restrictedZoneService = new RestrictedZoneService({ restrictedZoneRepo });
const restrictedZoneController = new RestrictedZoneController({
  restrictedZoneService,
});

app.use(bearerToken());

app.use(pagination(CONFIG.DEFAULT_PAGINATION_PAGE_SIZE));
// app.use(user(authService))

app.use(parkingRouter(parkingController));
app.use(restrictedZoneRouter(restrictedZoneController));

app.use(errorHandler());

app.use(swagger());

export { app };

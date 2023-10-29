// eslint-disable-next-line simple-import-sort/imports
import express, { json } from "express";
import "express-async-errors";
import bearerToken from "express-bearer-token";
import cors from "cors";
import helmet from "helmet";

import { CONFIG } from "./config";
import { ParkingController } from "./controllers/parking";
import { RestrictedZoneController } from "./controllers/restricted-zone";
import { errorHandler } from "./middlewares/error";
import { pagination } from "./middlewares/pagination";
import { createPostgresPool } from "./repos/postgres/pool";
import { parkingRouter } from "./routers/parking";
import { restrictedZoneRouter } from "./routers/restricted-zone";
import { ParkingService } from "./services/parking";
import { RestrictedZoneService } from "./services/restricted-zone";
import { swagger } from "./swagger";
import { subscriptionRouter } from "./routers/subscription";
import { SubscriptionService } from "./services/subscription";
import { SubscriptionController } from "./controllers/subscription";
import { SmsGateway } from "./gateways/sms";
import { AuthService } from "./services/auth";
import { AuthController } from "./controllers/auth";
import { authRouter } from "./routers/auth";
import { user } from "./middlewares/user";
import { userRouter } from "./routers/user";
import { UserController } from "./controllers/user";
import { UserService } from "./services/user";
import { settingRouter } from "./routers/setting";
import { SettingService } from "./services/setting";
import { SettingController } from "./controllers/setting";
import { tariffRouter } from "./routers/tariff";
import { TariffService } from "./services/tariff";
import { TariffController } from "./controllers/tariff";
import { PurchaseService } from "./services/purchase";
import { PurchaseController } from "./controllers/purchase";
import { purchaseRouter } from "./routers/purchase";
import { BillingGateway } from "./gateways/billing";
import { BookingService } from "./services/booking";
import { BookingController } from "./controllers/booking";
import { bookingRouter } from "./routers/booking";
import { RideController } from "./controllers/ride";
import { RideService } from "./services/ride";
import { rideRouter } from "./routers/ride";
import { pingRouter } from "./routers/ping";
import { SettingSerializer } from "./serializers/setting";
import { PurchaseSerializer } from "./serializers/purchase";
import { BookingSerializer } from "./serializers/booking";
import { ScooterSerializer } from "./serializers/scooter";
import { ScooterModelSerializer } from "./serializers/scooter-model";
import { RideSerializer } from "./serializers/ride";
import { PingController } from "./controllers/ping";
import { PingSerializer } from "./serializers/ping";
import { PingService } from "./services/ping";
import { scooterRouter } from "./routers/scooter";
import { ScooterController } from "./controllers/scooter";
import { ScooterService } from "./services/scooter";
import { historyRouter } from "./routers/history";
import { HistoryController } from "./controllers/history";
import { createPostgresRepos } from "./repos/postgres";
import { headers } from "./middlewares/headers";

const postgresPool = createPostgresPool();
const repos = createPostgresRepos(postgresPool);

// Serializers
const settingSerializer = new SettingSerializer();
const purchaseSerializer = new PurchaseSerializer({
  subscriptionRepo: repos.subscription,
  userRepo: repos.user,
});
const scooterModelSerializer = new ScooterModelSerializer({
  scooterManufacturerRepo: repos.scooterManufacturer,
});
const scooterSerializer = new ScooterSerializer({
  scooterModelSerializer,
  scooterModelRepo: repos.scooterModel,
});
const rideSerializer = new RideSerializer({
  scooterSerializer,
  scooterRepo: repos.scooter,
  userRepo: repos.user,
});
const bookingSerializer = new BookingSerializer({
  scooterSerializer,
  scooterRepo: repos.scooter,
  userRepo: repos.user,
});
const pingSerializer = new PingSerializer({
  scooterRepo: repos.scooter,
  scooterSerializer,
});

const smsGateway = new SmsGateway();
const billingGateway = new BillingGateway();

// Services
const parkingService = new ParkingService({ parkingRepo: repos.parking });
const restrictedZoneService = new RestrictedZoneService({
  restrictedZoneRepo: repos.restrictedZone,
});
const subscriptionService = new SubscriptionService({
  subscriptionRepo: repos.subscription,
});
const bookingService = new BookingService({
  bookingRepo: repos.booking,
  userRepo: repos.user,
  pingRepo: repos.ping,
  rideRepo: repos.ride,
  scooterRepo: repos.scooter,
  settingRepo: repos.setting,
});
const userService = new UserService({
  userRepo: repos.user,
  settingRepo: repos.setting,
});
const authService = new AuthService({
  totpRepo: repos.totp,
  authTokenRepo: repos.authToken,
  userRepo: repos.user,
  smsGateway,
});
const settingService = new SettingService({ settingRepo: repos.setting });
const purchaseService = new PurchaseService({
  purchaseRepo: repos.purchase,
  billingGateway,
  subscriptionRepo: repos.subscription,
  userRepo: repos.user,
});
const tariffService = new TariffService({
  settingRepo: repos.setting,
  purchaseRepo: repos.purchase,
});
const rideService = new RideService({
  rideRepo: repos.ride,
  tariffService,
  settingRepo: repos.setting,
  scooterRepo: repos.scooter,
  userRepo: repos.user,
  bookingRepo: repos.booking,
  pingRepo: repos.ping,
  billingGateway,
});
const scooterService = new ScooterService({
  scooterRepo: repos.scooter,
});
const pingService = new PingService({ pingRepo: repos.ping });

// Controllers
const parkingController = new ParkingController({ parkingService });
const restrictedZoneController = new RestrictedZoneController({
  restrictedZoneService,
});
const subscriptionController = new SubscriptionController({
  subscriptionService,
});
const userController = new UserController({
  userService,
  rideSerializer,
  purchaseService,
  purchaseSerializer,
  bookingSerializer,
  bookingService,
  rideService,
});
const authController = new AuthController({ authService });
const settingController = new SettingController({
  settingService,
  settingSerializer,
});
const tariffController = new TariffController({ tariffService });
const purchaseController = new PurchaseController({
  purchaseService,
  purchaseSerializer,
});
const bookingController = new BookingController({
  bookingService,
  bookingSerializer,
});
const rideController = new RideController({ rideService, rideSerializer });
const pingController = new PingController({ pingSerializer, pingService });
const scooterController = new ScooterController({
  scooterSerializer,
  scooterService,
});
const historyController = new HistoryController({
  rideService,
  rideSerializer,
});

const app = express();

app.use(bearerToken());
app.use(json());
app.use(cors());
app.use(helmet());

app.use(pagination(CONFIG.DEFAULT_PAGINATION_PAGE_SIZE));
app.use(user(authService));
app.use(headers());

app.use(authRouter(authController));
app.use(parkingRouter(parkingController));
app.use(restrictedZoneRouter(restrictedZoneController));
app.use(subscriptionRouter(subscriptionController));
app.use(userRouter(userController));
app.use(settingRouter(settingController));
app.use(tariffRouter(tariffController));
app.use(purchaseRouter(purchaseController));
app.use(bookingRouter(bookingController));
app.use(pingRouter(pingController));
app.use(rideRouter(rideController));
app.use(scooterRouter(scooterController));
app.use(historyRouter(historyController));

app.use(errorHandler());

app.use(swagger());

export { app };

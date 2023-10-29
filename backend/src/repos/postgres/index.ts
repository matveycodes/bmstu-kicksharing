import { AuthTokenPostgresRepo } from "./auth-token/repo";
import { BookingPostgresRepo } from "./booking/repo";
import { ParkingPostgresRepo } from "./parking/repo";
import { PingPostgresRepo } from "./ping/repo";
import { PostgresPool } from "./pool";
import { PurchasePostgresRepo } from "./purchase/repo";
import { RestrictedZonePostgresRepo } from "./restricted-zone/repo";
import { RidePostgresRepo } from "./ride/repo";
import { ScooterPostgresRepo } from "./scooter/repo";
import { ScooterManufacturerPostgresRepo } from "./scooter-manufacturer/repo";
import { ScooterModelPostgresRepo } from "./scooter-model/repo";
import { SettingPostgresRepo } from "./setting/repo";
import { SubscriptionPostgresRepo } from "./subscription/repo";
import { TotpPostgresRepo } from "./totp/repo";
import { UserPostgresRepo } from "./user/repo";

const createPostgresRepos = (pool: PostgresPool) => ({
  authToken: new AuthTokenPostgresRepo(pool),
  booking: new BookingPostgresRepo(pool),
  parking: new ParkingPostgresRepo(pool),
  ping: new PingPostgresRepo(pool),
  purchase: new PurchasePostgresRepo(pool),
  restrictedZone: new RestrictedZonePostgresRepo(pool),
  ride: new RidePostgresRepo(pool),
  scooter: new ScooterPostgresRepo(pool),
  scooterManufacturer: new ScooterManufacturerPostgresRepo(pool),
  scooterModel: new ScooterModelPostgresRepo(pool),
  setting: new SettingPostgresRepo(pool),
  subscription: new SubscriptionPostgresRepo(pool),
  totp: new TotpPostgresRepo(pool),
  user: new UserPostgresRepo(pool),
});

export { createPostgresRepos };

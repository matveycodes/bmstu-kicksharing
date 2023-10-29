import { CreateTariffServiceDto } from "../dto/create-tariff-service";
import { IPurchaseRepo } from "../interfaces/purchase-repo";
import { ISettingRepo } from "../interfaces/setting-repo";
import { ITariffService } from "../interfaces/tariff-service";
import { UserId } from "../models/user";

class TariffService implements ITariffService {
  private _settingRepo: ISettingRepo;
  private _purchaseRepo: IPurchaseRepo;

  private static PER_MINUTE_PRICE_NAME = "PER_MINUTE_PRICE";
  private static START_PRICE_NAME = "START_PRICE";

  public constructor(dto: CreateTariffServiceDto) {
    this._settingRepo = dto.settingRepo;
    this._purchaseRepo = dto.purchaseRepo;
  }

  public async get(userId: UserId) {
    const [perMinutePriceSetting, startPriceSetting] = await Promise.all([
      this._settingRepo.getByName(TariffService.PER_MINUTE_PRICE_NAME),
      this._settingRepo.getByName(TariffService.START_PRICE_NAME),
    ]);

    const hasActiveSubscription =
      !!(await this._purchaseRepo.getLastActiveByUserId(userId));

    const perMinutePrice = Number.parseInt(perMinutePriceSetting.value);
    const startPrice = hasActiveSubscription
      ? 0
      : Number.parseInt(startPriceSetting.value);

    return { perMinutePrice, startPrice };
  }
}

export { TariffService };

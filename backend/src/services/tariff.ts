import { CreateTariffServiceDto } from "../dto/create-tariff-service";
import { IPurchaseRepo } from "../interfaces/purchase-repo";
import { ISettingRepo } from "../interfaces/setting-repo";
import { ITariffService } from "../interfaces/tariff-service";
import { UserId } from "../models/user";

class TariffService implements ITariffService {
  private _settingRepo: ISettingRepo;
  private _purchaseRepo: IPurchaseRepo;

  public constructor(dto: CreateTariffServiceDto) {
    this._settingRepo = dto.settingRepo;
    this._purchaseRepo = dto.purchaseRepo;
  }

  public async get(userId: UserId) {
    const [perMinutePriceSetting, startPriceSetting] = await Promise.all([
      this._settingRepo.getByName("PER_MINUTE_PRICE"),
      this._settingRepo.getByName("START_PRICE"),
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

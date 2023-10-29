import { CreateTariffServiceDto } from "../dto/create-tariff-service";
import { ISettingRepo } from "../interfaces/setting-repo";
import { ITariffService } from "../interfaces/tariff-service";

class TariffService implements ITariffService {
  private _settingRepo: ISettingRepo;

  private static PER_MINUTE_PRICE_NAME = "PER_MINUTE_PRICE";
  private static START_PRICE_NAME = "START_PRICE";

  public constructor(dto: CreateTariffServiceDto) {
    this._settingRepo = dto.settingRepo;
  }

  public async get() {
    const [perMinutePriceSetting, startPriceSetting] = await Promise.all([
      this._settingRepo.getByName(TariffService.PER_MINUTE_PRICE_NAME),
      this._settingRepo.getByName(TariffService.START_PRICE_NAME),
    ]);

    return {
      perMinutePrice: parseInt(perMinutePriceSetting.value),
      startPrice: parseInt(startPriceSetting.value),
    };
  }
}

export { TariffService };

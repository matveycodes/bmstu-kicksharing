import { IPurchaseRepo } from "../interfaces/purchase-repo";
import { ISettingRepo } from "../interfaces/setting-repo";

interface CreateTariffServiceDto {
  settingRepo: ISettingRepo;
  purchaseRepo: IPurchaseRepo;
}

export { CreateTariffServiceDto };

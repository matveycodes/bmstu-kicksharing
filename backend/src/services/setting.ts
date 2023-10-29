import { CreateSettingServiceDto } from "../dto/create-setting-service";
import { ISettingRepo } from "../interfaces/setting-repo";
import { ISettingService } from "../interfaces/setting-service";
import { Setting } from "../vo/setting";

class SettingService implements ISettingService {
  private _settingRepo: ISettingRepo;

  public constructor(dto: CreateSettingServiceDto) {
    this._settingRepo = dto.settingRepo;
  }

  public async getAll() {
    return this._settingRepo.getAll();
  }

  public async save(setting: Setting) {
    await this._settingRepo.save(setting);
  }
}

export { SettingService };

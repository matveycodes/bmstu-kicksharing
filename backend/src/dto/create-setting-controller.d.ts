import { ISettingSerializer } from "../interfaces/setting-serializer";
import { ISettingService } from "../interfaces/setting-service";

interface CreateSettingControllerDto {
  settingService: ISettingService;
  settingSerializer: ISettingSerializer;
}

export { CreateSettingControllerDto };

import { ISettingRepo } from "../interfaces/setting-repo";
import { IUserRepo } from "../interfaces/user-repo";

interface CreateUserServiceDto {
  userRepo: IUserRepo;
  settingRepo: ISettingRepo;
}

export { CreateUserServiceDto };

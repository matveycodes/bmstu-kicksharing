import dayjs from "dayjs";

import { CreateUserServiceDto } from "../dto/create-user-service";
import { UpdateUserModelDto } from "../dto/update-user-model";
import { ValidationError } from "../errors/validation";
import { ISettingRepo } from "../interfaces/setting-repo";
import { IUserRepo } from "../interfaces/user-repo";
import { IUserService } from "../interfaces/user-service";
import { UserId } from "../models/user";
import { PaginationRequest } from "../vo/pagination";

class UserService implements IUserService {
  private _userRepo: IUserRepo;
  private _settingRepo: ISettingRepo;

  public constructor(dto: CreateUserServiceDto) {
    this._userRepo = dto.userRepo;
    this._settingRepo = dto.settingRepo;
  }

  public async getById(id: UserId) {
    return this._userRepo.getById(id);
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return this._userRepo.getAllPaginated(pagination);
  }

  public async findAllPaginated(query: string, pagination: PaginationRequest) {
    return this._userRepo.findAllPaginated(query, pagination);
  }

  public async update(id: UserId, dto: UpdateUserModelDto): Promise<void> {
    const user = await this._userRepo.getById(id);

    if (dto.birthdate) {
      const age = dayjs().diff(dto.birthdate, "years");
      const minAge = +(await this._settingRepo.getByName("MIN_USER_AGE")).value;

      if (age < minAge) {
        throw new ValidationError("Возраст меньше минимального");
      } else {
        user.status = "active";
        user.birthdate = dto.birthdate;
      }
    }

    user.email = dto.email ?? user.email;
    user.firstName = dto.firstName ?? user.firstName;
    user.lastName = dto.lastName ?? user.lastName;
    user.middleName = dto.middleName ?? user.middleName;
    user.status = dto.status ?? user.status;
    user.role = dto.role ?? user.role;

    return this._userRepo.save(user);
  }
}

export { UserService };

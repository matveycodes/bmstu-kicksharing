import { UserRole, UserStatus } from "../models/user";

interface UpdateUserModelRestrictedDto {
  middleName?: string | null;
  lastName?: string | null;
  firstName?: string | null;
  email?: string | null;
  birthdate?: Date | null;
}

interface UpdateUserModelExtendedDto extends UpdateUserModelRestrictedDto {
  status?: UserStatus;
  role?: UserRole;
}

export { UpdateUserModelExtendedDto, UpdateUserModelRestrictedDto };

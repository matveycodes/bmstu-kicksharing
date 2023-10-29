import { UserRole, UserStatus } from "../models/user";

interface UpdateUserModelDto {
  middleName?: string | null;
  lastName?: string | null;
  firstName?: string | null;
  email?: string | null;
  birthdate?: Date | null;
  status?: UserStatus;
  role?: UserRole;
}

export { UpdateUserModelDto };

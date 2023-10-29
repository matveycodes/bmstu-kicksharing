import { UserId, UserRole, UserStatus } from "../models/user";

interface CreateUserModelDto {
  id: UserId;
  status?: UserStatus;
  role?: UserRole;
  dateJoined?: Date;
  middleName?: string;
  firstName?: string;
  lastName?: string;
  email?: string;
  phone: string;
  birthdate?: Date;
}

export { CreateUserModelDto };

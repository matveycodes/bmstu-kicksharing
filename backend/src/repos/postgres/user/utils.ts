import { User, UserId, UserRole, UserStatus } from "../../../models/user";
import { UserRow } from "./types";

const parseUserRow = (row: UserRow): User => {
  return new User({
    id: row.id as UserId,
    status: row.status as UserStatus,
    role: row.role as UserRole,
    dateJoined: new Date(row.date_joined),
    middleName: row.middle_name ?? undefined,
    firstName: row.first_name ?? undefined,
    lastName: row.last_name ?? undefined,
    email: row.email ?? undefined,
    phone: row.phone,
    birthdate: row.birthdate ? new Date(row.birthdate) : undefined,
  });
};

export { parseUserRow };

import { User } from "./user";

type UpdateCurrentUserBody = Partial<
  Pick<User, "firstName" | "lastName" | "middleName" | "email" | "birthdate">
>;

export { UpdateCurrentUserBody };

import { Response } from "features/api";

import { User } from "./user";

type GetCurrentUserResponse = Response<User>;

interface UpdateCurrentUserBody {
  birthdate?: string;
  middleName?: string;
  firstName?: string;
  email?: string;
  lastName?: string;
}

export { GetCurrentUserResponse, UpdateCurrentUserBody };

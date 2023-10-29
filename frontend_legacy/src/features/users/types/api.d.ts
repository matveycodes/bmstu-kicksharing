import { PaginatedResponse } from "features/api";
import { User } from "features/user";

type GetUsersResponse = PaginatedResponse<User>;

export { GetUsersResponse };

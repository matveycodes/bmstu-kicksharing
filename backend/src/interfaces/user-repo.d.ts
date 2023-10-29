import { User, UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IUserRepo {
  nextId(): UserId;
  save(user: User): Promise<void>;
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<User>>;
  findAllPaginated(
    query: string,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<User>>;
  getById(id: UserId): Promise<User>;
  getByPhone(phone: User["phone"]): Promise<User>;
}

export { IUserRepo };

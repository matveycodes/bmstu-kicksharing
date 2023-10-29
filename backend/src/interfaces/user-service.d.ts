import {
  UpdateUserModelExtendedDto,
  UpdateUserModelRestrictedDto,
} from "../dto/update-user-model";
import { User, UserId } from "../models/user";
import { PaginatedResponse, PaginationRequest } from "../vo/pagination";

interface IUserService {
  getAllPaginated(
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<User>>;
  findAllPaginated(
    query: string,
    pagination: PaginationRequest
  ): Promise<PaginatedResponse<User>>;
  getById(id: UserId): Promise<User>;
  update(
    id: UserId,
    dto: UpdateUserModelRestrictedDto | UpdateUserModelExtendedDto
  ): Promise<void>;
}

export { IUserService };

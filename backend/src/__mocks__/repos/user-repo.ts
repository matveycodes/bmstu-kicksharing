import crypto from "crypto";
import orderBy from "lodash/orderBy";

import { createPaginatedResponse } from "../../__tests__/helpers/pagination";
import { NotFoundError } from "../../errors/not-found";
import { IUserRepo } from "../../interfaces/user-repo";
import { User, UserId } from "../../models/user";
import { PaginationRequest } from "../../vo/pagination";

class UserMockRepo implements IUserRepo {
  private _users: User[] = [];

  public async findAllPaginated(query: string, pagination: PaginationRequest) {
    const regex = new RegExp(query, "i");

    const users = this._users.filter((u) => {
      const haystack = [
        u.firstName,
        u.lastName,
        u.middleName,
        u.phone,
        u.email,
      ].filter(Boolean);

      return haystack.some((h) => regex.test(h!));
    });

    return createPaginatedResponse(users, pagination);
  }

  public async getAllPaginated(pagination: PaginationRequest) {
    return createPaginatedResponse(this._users, pagination);
  }

  public async getById(id: UserId) {
    const user = this._users.find((u) => u.id === id);

    if (!user) {
      throw new NotFoundError("Пользователь не найден");
    }

    return user;
  }

  public async getByPhone(phone: User["phone"]) {
    const user = this._users.find((u) => u.phone === phone);

    if (!user) {
      throw new NotFoundError("Пользователь не найден");
    }

    return user;
  }

  public nextId() {
    return crypto.randomUUID() as UserId;
  }

  public async save(user: User): Promise<void> {
    this.remove(user.id);
    this._users.push(user);
    this._users = orderBy(this._users, ["date_joined"], ["desc"]);
  }

  private remove(userId: UserId) {
    this._users = this._users.filter((u) => u.id !== userId);
  }
}

export { UserMockRepo };

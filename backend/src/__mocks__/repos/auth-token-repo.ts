import { NotFoundError } from "../../errors/not-found";
import { IAuthTokenRepo } from "../../interfaces/auth-token-repo";
import { AuthToken } from "../../vo/auth-token";

class AuthTokenMockRepo implements IAuthTokenRepo {
  private _tokens: AuthToken[] = [];

  public async getByValue(value: AuthToken["value"]) {
    const token = this._tokens.find((t) => t.value === value);

    if (!token) {
      throw new NotFoundError("Токен не найден");
    }

    return token;
  }

  public async save(token: AuthToken) {
    this.remove(token.value);
    this._tokens.push(token);
  }

  private remove(value: AuthToken["value"]) {
    this._tokens = this._tokens.filter((t) => t.value !== value);
  }
}

export { AuthTokenMockRepo };

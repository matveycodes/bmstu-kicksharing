import { AuthToken } from "../vo/auth-token";

interface IAuthTokenRepo {
  save(authToken: AuthToken): Promise<void>;
  getByValue(value: AuthToken["value"]): Promise<AuthToken>;
}

export { IAuthTokenRepo };

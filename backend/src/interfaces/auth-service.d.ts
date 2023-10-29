import { User } from "../models/user";

interface IAuthService {
  request(phone: string): Promise<string>;
  proceed(signature: string, code: number): Promise<string>;
  getUserByToken(value: string): Promise<User>;
}

export { IAuthService };

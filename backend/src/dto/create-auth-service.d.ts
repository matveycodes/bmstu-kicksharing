import { IAuthTokenRepo } from "../interfaces/auth-token-repo";
import { ISmsGateway } from "../interfaces/sms-gateway";
import { ITotpRepo } from "../interfaces/totp-repo";
import { IUserRepo } from "../interfaces/user-repo";

interface CreateAuthServiceDto {
  userRepo: IUserRepo;
  totpRepo: ITotpRepo;
  authTokenRepo: IAuthTokenRepo;
  smsGateway: ISmsGateway;
}

export { CreateAuthServiceDto };

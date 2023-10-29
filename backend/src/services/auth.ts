import * as crypto from "crypto";
import dayjs from "dayjs";

import { CreateAuthServiceDto } from "../dto/create-auth-service";
import { BadStateError } from "../errors/bad-state";
import { NotFoundError } from "../errors/not-found";
import { ValidationError } from "../errors/validation";
import { IAuthService } from "../interfaces/auth-service";
import { IAuthTokenRepo } from "../interfaces/auth-token-repo";
import { ISmsGateway } from "../interfaces/sms-gateway";
import { ITotpRepo } from "../interfaces/totp-repo";
import { IUserRepo } from "../interfaces/user-repo";
import { User, UserId } from "../models/user";
import { Totp } from "../vo/totp";

const SECONDS_IN_MONTH = 31 * 24 * 60 * 60;

class AuthService implements IAuthService {
  private _userRepo: IUserRepo;
  private _totpRepo: ITotpRepo;
  private _authTokenRepo: IAuthTokenRepo;

  private _smsGateway: ISmsGateway;

  private static CODE_LENGTH = 6;
  private static TOKEN_TTL_SECONDS = SECONDS_IN_MONTH;

  public constructor(dto: CreateAuthServiceDto) {
    this._userRepo = dto.userRepo;
    this._totpRepo = dto.totpRepo;
    this._authTokenRepo = dto.authTokenRepo;
    this._smsGateway = dto.smsGateway;
  }

  public async request(phone: string) {
    const code = AuthService.generateRandomCode();
    const signature = AuthService.generateRandomString();

    await this._smsGateway.send(phone, `Ваш код — ${code}.`);
    const dateSent = new Date();
    await this._totpRepo.save({ signature, code, dateSent, phone });

    return signature;
  }

  public async proceed(signature: string, code: number) {
    await this.ensureCodeIsValid(signature, code);

    const totp = await this._totpRepo.getBySignature(signature);
    await this.useTotp(totp);

    const user = await this.getOrCreateUser(totp);

    return this.createToken(user.id);
  }

  public async getUserByToken(value: string) {
    const { userId } = await this._authTokenRepo.getByValue(value);
    return this._userRepo.getById(userId);
  }

  private static generateRandomCode() {
    const min = Math.pow(10, AuthService.CODE_LENGTH - 1);
    const max = Math.pow(10, AuthService.CODE_LENGTH);
    return crypto.randomInt(min, max);
  }

  private static generateRandomString() {
    return crypto.randomUUID();
  }

  private async ensureCodeIsValid(signature: string, code: number) {
    const totp = await this._totpRepo.getBySignature(signature);

    if (totp.code !== code) {
      throw new ValidationError("Неверный код");
    }

    if (totp.dateUsed) {
      throw new BadStateError("Код уже использован");
    }
  }

  private async useTotp(totp: Totp) {
    const dateUsed = new Date();
    await this._totpRepo.save({ ...totp, dateUsed });
  }

  private async getOrCreateUser({ phone }: Totp) {
    let user: User;

    try {
      user = await this._userRepo.getByPhone(phone);
    } catch (error) {
      if (error instanceof NotFoundError) {
        user = new User({ id: this._userRepo.nextId(), phone });
        await this._userRepo.save(user);
      } else {
        throw error;
      }
    }

    return user;
  }

  private async createToken(userId: UserId) {
    const token = AuthService.generateRandomString();
    const dateExpired = dayjs()
      .add(AuthService.TOKEN_TTL_SECONDS, "seconds")
      .toDate();

    await this._authTokenRepo.save({ value: token, userId, dateExpired });

    return token;
  }
}

export { AuthService };

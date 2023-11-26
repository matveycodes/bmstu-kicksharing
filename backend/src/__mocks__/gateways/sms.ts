import { ISmsGateway } from "../../interfaces/sms-gateway";

class SmsMockGateway implements ISmsGateway {
  public async send() {}
}

export { SmsMockGateway };

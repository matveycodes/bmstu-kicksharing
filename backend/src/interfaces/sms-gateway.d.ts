interface ISmsGateway {
  send(phone: string, message: string): Promise<void>;
}

export { ISmsGateway };

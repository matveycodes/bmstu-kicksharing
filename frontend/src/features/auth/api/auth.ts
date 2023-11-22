import { client } from "../../api";
import { LoginResponse, VerifyCodeResponse } from "../types/api";
import { LoginFormData } from "../types/login-form";
import { OTPFormData } from "../types/otp-form";

const login = async (body: LoginFormData) => {
  const { data } = await client.post<LoginResponse>("/auth/request/", body);

  return data;
};

const verifyCode = async (body: OTPFormData) => {
  const { data } = await client.post<VerifyCodeResponse>(
    "/auth/proceed/",
    body,
  );

  return data;
};

export { login, verifyCode };

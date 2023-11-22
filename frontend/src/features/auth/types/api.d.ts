interface LoginResponse {
  signature: string;
}

interface VerifyCodeResponse {
  token: string;
}

export { LoginResponse, VerifyCodeResponse };

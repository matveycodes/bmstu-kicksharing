import axios, { AxiosError, isAxiosError } from "axios";
import { SetRequired } from "type-fest";

import { getToken } from "../../auth";
import { CLIENT_CONFIG } from "../config/client";
import { ErrorResponse } from "../types/response";

const client = axios.create(CLIENT_CONFIG);

client.interceptors.request.use((config) => {
  const token = getToken();

  if (token) {
    config.headers["Authorization"] = `Bearer ${token}`;
  }

  return config;
}, Promise.reject);

const isClientError = (
  error: unknown,
): error is SetRequired<AxiosError<ErrorResponse>, "response"> => {
  return isAxiosError(error) && !!error.response;
};

export { client, isClientError };

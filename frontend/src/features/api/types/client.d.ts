import { CreateAxiosDefaults, RawAxiosRequestConfig } from "axios";

type RequestConfig = RawAxiosRequestConfig;

type ClientConfig = CreateAxiosDefaults;

export { ClientConfig, RequestConfig };

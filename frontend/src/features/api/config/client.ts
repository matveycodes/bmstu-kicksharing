import { ClientConfig } from "../types/client";

const CLIENT_CONFIG: ClientConfig = {
  baseURL: import.meta.env.VITE_BACKEND_URL,
};

export { CLIENT_CONFIG };

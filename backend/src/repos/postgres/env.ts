import env from "env-var";

const ENV = {
  POSTGRES_HOST: env.get("POSTGRES_HOST").required().asString(),
  POSTGRES_PORT: env.get("POSTGRES_PORT").required().asPortNumber(),
  POSTGRES_USER: env.get("POSTGRES_USER").required().asString(),
  POSTGRES_PASSWORD: env.get("POSTGRES_PASSWORD").required().asString(),
  POSTGRES_DB: env.get("POSTGRES_DB").required().asString(),
};

export { ENV };

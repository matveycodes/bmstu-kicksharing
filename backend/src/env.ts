import env from "env-var";

const ENV = {
  PORT: env.get("PORT").asPortNumber(),
  IS_READONLY: env.get("IS_READONLY").asBool(),
};

export { ENV };

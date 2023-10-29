import env from "env-var";

const ENV = {
  PORT: env.get("PORT").asPortNumber(),
  DB: env.get("DB").asEnum(["postgres"]),
};

export { ENV };

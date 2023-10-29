import pgp from "pg-promise";

import { ENV } from "./env";

const CONFIG = {
  host: ENV.POSTGRES_HOST,
  port: ENV.POSTGRES_PORT,
  user: ENV.POSTGRES_USER,
  database: ENV.POSTGRES_DB,
  password: ENV.POSTGRES_PASSWORD,
};

const createPostgresPool = () => pgp()(CONFIG);

type PostgresPool = ReturnType<typeof createPostgresPool>;

export { createPostgresPool };
export type { PostgresPool };

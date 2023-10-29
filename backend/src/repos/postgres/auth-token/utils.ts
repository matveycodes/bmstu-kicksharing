import { AuthToken } from "../../../vo/auth-token";
import { AuthTokenRow } from "./types";

const parseAuthTokenRow = (row: AuthTokenRow): AuthToken => {
  return {
    userId: row.user_id,
    value: row.value,
    dateExpired: new Date(row.date_expired),
  } as AuthToken;
};

export { parseAuthTokenRow };

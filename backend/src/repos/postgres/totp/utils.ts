import { Totp } from "../../../vo/totp";
import { TotpRow } from "./types";

const parseTotpRow = (row: TotpRow) => {
  return {
    code: row.code,
    dateSent: new Date(row.date_sent),
    phone: row.phone,
    signature: row.signature,
    dateUsed: row.date_used ? new Date(row.date_used) : undefined,
  } as Totp;
};

export { parseTotpRow };

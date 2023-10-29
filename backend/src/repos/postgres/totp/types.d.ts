interface TotpRow {
  code: number;
  date_sent: string;
  phone: string;
  signature: string;
  date_used: string | null;
}

export { TotpRow };

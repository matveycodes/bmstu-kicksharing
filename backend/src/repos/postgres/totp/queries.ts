const INSERT = `
INSERT INTO totp (
  code, date_sent, phone, signature, 
  date_used
) 
VALUES 
  (
    $(code), 
    $(dateSent), 
    $(phone), 
    $(signature), 
    $(dateUsed)
  ) ON CONFLICT (signature) DO 
UPDATE 
SET 
  code = $(code), 
  date_sent = $(dateSent), 
  phone = $(phone), 
  signature = $(signature), 
  date_used = $(dateUsed)
`;

const SELECT_BY_SIGNATURE = `
SELECT 
  * 
FROM 
  totp 
WHERE 
  signature = $(signature)
`;

export { INSERT, SELECT_BY_SIGNATURE };

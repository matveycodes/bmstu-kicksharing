const SELECT_BY_VALUE = `
SELECT
    * 
FROM
    auth_tokens 
WHERE
    value = $(value)
`;

const INSERT = `
INSERT INTO auth_tokens (user_id, value, date_expired) 
VALUES 
  (
    $(userId), 
    $(value), 
    $(dateExpired)
  ) ON CONFLICT (value) DO 
UPDATE 
SET 
  user_id = $(userId), 
  date_expired = $(dateExpired)
`;

export { INSERT, SELECT_BY_VALUE };

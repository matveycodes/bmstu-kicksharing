const SELECT_BY_NAME = `
SELECT 
  * 
FROM 
  settings
WHERE 
  name = $(name)
`;

const SELECT_ALL = `
SELECT 
  * 
FROM 
  settings 
ORDER BY 
  name
`;

const INSERT = `
INSERT INTO settings (name, value) 
VALUES 
  (
    $(name), 
    $(value)
  ) ON CONFLICT (name) DO 
UPDATE 
SET 
  value = $(value)
`;

export { INSERT, SELECT_ALL, SELECT_BY_NAME };

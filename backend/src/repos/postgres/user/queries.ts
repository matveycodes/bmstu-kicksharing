const INSERT = `
INSERT INTO users (
  id, status, date_joined, middle_name, 
  first_name, last_name, email, phone, 
  birthdate
) 
VALUES 
  (
    $(id), 
    $(status), 
    $(dateJoined), 
    $(middleName), 
    $(firstName), 
    $(lastName), 
    $(email), 
    $(phone), 
    $(birthdate)
  ) ON CONFLICT (id) DO 
UPDATE 
SET 
  id = $(id), 
  status = $(status), 
  date_joined = $(dateJoined), 
  middle_name = $(middleName), 
  first_name = $(firstName), 
  last_name = $(lastName), 
  email = $(email), 
  phone = $(phone), 
  birthdate = $(birthdate)
`;

const SELECT_ALL_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM 
  users 
ORDER BY 
  date_joined desc 
LIMIT 
  $(limit)
OFFSET 
  $(offset)
`;

const FIND_ALL_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM 
  users
WHERE
  first_name LIKE $(query) OR last_name LIKE $(query) OR middle_name LIKE $(query) OR email LIKE $(query) OR phone LIKE $(query) 
ORDER BY 
  date_joined desc
LIMIT 
  $(limit)
OFFSET 
  $(offset)
`;

const SELECT_BY_ID = `
SELECT 
  * 
FROM 
  users 
WHERE 
  id = $(id)
`;

const SELECT_BY_PHONE = `
SELECT 
  * 
FROM 
  users 
WHERE 
  phone = $(phone)
`;

export {
  FIND_ALL_PAGINATED,
  INSERT,
  SELECT_ALL_PAGINATED,
  SELECT_BY_ID,
  SELECT_BY_PHONE,
};

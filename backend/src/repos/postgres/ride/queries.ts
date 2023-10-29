const SELECT_ALL_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM
  rides
ORDER BY
  date_started desc
LIMIT 
  $(limit)
OFFSET
  $(offset)
`;

const SELECT_ACTIVE_BY_USER_ID_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM
  rides
WHERE
  user_id = $(userId)
  AND date_finished IS NULL
ORDER BY
  date_started desc
LIMIT 
  $(limit)
OFFSET
  $(offset)
`;

const SELECT_ACTIVE_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM
  rides
WHERE
  date_finished IS NULL
ORDER BY
  date_started desc
LIMIT 
  $(limit)
OFFSET
  $(offset)
`;

const SELECT_FINISHED_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM
  rides
WHERE
  date_finished IS NOT NULL
ORDER BY
  date_started desc
LIMIT 
  $(limit)
OFFSET
  $(offset)
`;

const SELECT_FINISHED_BY_USER_ID_PAGINATED = `
SELECT 
  *,
  count(*) over() as count
FROM
  rides
WHERE
  date_finished IS NOT NULL
  and user_id = $(userId)
ORDER BY
  date_started desc
LIMIT 
  $(limit)
OFFSET
  $(offset)
`;

const INSERT = `
INSERT INTO rides (
  id, user_id, scooter_id, start_price, 
  per_minute_price, date_started, 
  date_finished
) 
VALUES 
  (
    $(id), 
    $(userId), 
    $(scooterId), 
    $(startPrice), 
    $(perMinutePrice), 
    $(dateStarted), 
    $(dateFinished)
  ) ON CONFLICT (id) DO 
UPDATE 
SET 
  id = $(id), 
  user_id = $(userId), 
  scooter_id = $(scooterId), 
  start_price = $(startPrice), 
  per_minute_price = $(perMinutePrice), 
  date_started = $(dateStarted), 
  date_finished = $(dateFinished)
`;

const SELECT_ACTIVE_BY_SCOOTER_ID = `
SELECT 
  * 
FROM 
  rides 
WHERE 
  scooter_id = $(scooterId) 
  AND date_finished IS NULL
`;

const SELECT_ACTIVE_BY_USER_ID = `
SELECT 
  * 
FROM 
  rides 
WHERE 
  user_id = $(userId) 
  AND date_finished IS NULL
`;

const SELECT_BY_ID = `
SELECT 
  * 
FROM 
  rides 
WHERE 
  id = $(id)
`;

export {
  INSERT,
  SELECT_ACTIVE_BY_SCOOTER_ID,
  SELECT_ACTIVE_BY_USER_ID,
  SELECT_ACTIVE_BY_USER_ID_PAGINATED,
  SELECT_ACTIVE_PAGINATED,
  SELECT_ALL_PAGINATED,
  SELECT_BY_ID,
  SELECT_FINISHED_BY_USER_ID_PAGINATED,
  SELECT_FINISHED_PAGINATED,
};

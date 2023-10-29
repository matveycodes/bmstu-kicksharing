const SELECT_ACTIVE_PAGINATED = `
select 
  *,
  count(*) over() as count
from
  bookings
where 
  date_finished > NOW()
order by
  date_started desc 
limit 
  $(limit) 
offset 
  $(offset)
`;

const SELECT_FINISHED_PAGINATED = `
select 
  *,
  count(*) over() as count
from
  bookings
where 
  date_finished <= NOW()
order by
  date_started desc 
limit 
  $(limit) 
offset 
  $(offset)
`;

const SELECT_ACTIVE_BY_USER_ID_PAGINATED = `
select 
  *,
  count(*) over() as count
from
  bookings
where 
  date_finished > NOW()
  and user_id = $(userId)
order by
  date_started desc 
limit 
  $(limit) 
offset 
  $(offset)
`;

const SELECT_ALL_PAGINATED = `
select 
  *,
  count(*) over() as count
from
  bookings
order by
  date_started desc 
limit 
  $(limit) 
offset 
  $(offset)
`;

const INSERT = `
INSERT INTO bookings (
  id, user_id, scooter_id, date_started, 
  date_finished
) 
VALUES 
  (
    $(id), 
    $(userId), 
    $(scooterId), 
    $(dateStarted), 
    $(dateFinished)
  ) ON CONFLICT (id) DO 
UPDATE 
SET 
  id = $(id), 
  user_id = $(userId), 
  scooter_id = $(scooterId), 
  date_started = $(dateStarted), 
  date_finished = $(dateFinished)
`;

const SELECT_ACTIVE_BY_USER_ID = `
SELECT 
  * 
FROM 
  bookings 
WHERE 
  user_id = $(userId) 
  AND date_finished > NOW()
ORDER BY
  date_started DESC
`;

const SELECT_ACTIVE_BY_SCOOTER_ID = `
SELECT 
  * 
FROM 
  bookings 
WHERE 
  scooter_id = $(scooterId) 
  AND date_finished > NOW()
ORDER BY
  date_started DESC
`;

const SELECT_BY_ID = `
SELECT 
  * 
FROM 
  bookings 
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
  SELECT_FINISHED_PAGINATED,
};

const SELECT_ALL_PAGINATED = `
select 
  *,
  ST_X(location::geometry) as longitude, 
  ST_Y(location::geometry) as latitude,
  count(*) over() as count 
from
  pings 
order by 
  date desc 
limit 
  $(limit) 
offset 
  $(offset)
`;

const SELECT_WITHIN_BOUNDS_PAGINATED = `
select 
  *,
  ST_X(location::geometry) as longitude, 
  ST_Y(location::geometry) as latitude,
  count(*) over() as count 
from
  pings 
order by 
  date desc 
WHERE 
  ST_Contains(
    ST_MakeEnvelope(
      $(minLongitude), 
      $(minLatitude), 
      $(maxLongitude), 
      $(maxLatitude), 
      4326
    ), 
    location::geometry
  )
limit 
  $(limit) 
offset 
  $(offset)
`;

const SELECT_DISCHARGED_PAGINATED = `
select 
  distinct on (p.scooter_id) *, 
  ST_X(p.location::geometry) as longitude, 
  ST_Y(p.location::geometry) as latitude,
  count(*) over() as count
from 
  pings p 
  left join scooters s on p.scooter_id = s.id 
where 
  p.battery_level <= 0 
  and (s.status = 'enabled') 
order by 
  p.scooter_id, 
  p.date desc
limit 
  $(limit)
offset 
  $(offset)
`;

const SELECT_DISCHARGED_WITHIN_BOUNDS_PAGINATED = `
select 
  distinct on (p.scooter_id) *, 
  ST_X(p.location::geometry) as longitude, 
  ST_Y(p.location::geometry) as latitude,
  count(*) over() as count
from 
  pings p 
  left join scooters s on p.scooter_id = s.id 
where 
  p.battery_level <= 0 
  and (s.status = 'enabled') 
  and ST_Contains(
    ST_MakeEnvelope(
      $(minLongitude), 
      $(minLatitude), 
      $(maxLongitude), 
      $(maxLatitude), 
      4326
    ), 
    location::geometry
  )
order by 
  p.scooter_id, 
  p.date desc
limit 
  $(limit)
offset 
  $(offset)
`;

const SELECT_RENTABLE_PAGINATED = `
select 
  distinct on (p.scooter_id) *, 
  ST_X(p.location::geometry) as longitude, 
  ST_Y(p.location::geometry) as latitude,
  count(*) over() as count
from 
  pings p 
  left join rides r on p.scooter_id = r.scooter_id 
  left join bookings b on p.scooter_id = b.scooter_id 
  left join scooters s on p.scooter_id = s.id 
where 
  p.battery_level > 0 
  and (s.status = 'enabled') 
  and (
    r.id is null 
    or r.date_finished is not null
  ) 
  and (
    b.id is null 
    or b.date_finished < NOW()
  ) 
order by 
  p.scooter_id, 
  p.date desc
limit 
  $(limit)
offset 
  $(offset)
`;

const SELECT_RENTABLE_WITHIN_BOUNDS_PAGINATED = `
select 
  distinct on (p.scooter_id) *, 
  ST_X(p.location::geometry) as longitude, 
  ST_Y(p.location::geometry) as latitude,
  count(*) over() as count
from 
  pings p 
  left join rides r on p.scooter_id = r.scooter_id 
  left join bookings b on p.scooter_id = b.scooter_id 
  left join scooters s on p.scooter_id = s.id 
where 
  p.battery_level > 0 
  and (s.status = 'enabled') 
  and (
    r.id is null 
    or r.date_finished is not null
  ) 
  and (
    b.id is null 
    or b.date_finished < NOW()
  ) 
  and ST_Contains(
    ST_MakeEnvelope(
      $(minLongitude), 
      $(minLatitude), 
      $(maxLongitude), 
      $(maxLatitude), 
      4326
    ), 
    location::geometry
  )
order by 
  p.scooter_id, 
  p.date desc
limit 
  $(limit)
offset 
  $(offset)
`;

const SELECT_LATEST_BY_SCOOTER_ID = `
select 
  *,
  ST_X(location::geometry) as longitude, 
  ST_Y(location::geometry) as latitude
from 
  pings 
where 
  scooter_id = $(scooterId) 
order by 
  date desc 
limit 
  1
`;

export {
  SELECT_ALL_PAGINATED,
  SELECT_DISCHARGED_PAGINATED,
  SELECT_DISCHARGED_WITHIN_BOUNDS_PAGINATED,
  SELECT_LATEST_BY_SCOOTER_ID,
  SELECT_RENTABLE_PAGINATED,
  SELECT_RENTABLE_WITHIN_BOUNDS_PAGINATED,
  SELECT_WITHIN_BOUNDS_PAGINATED,
};

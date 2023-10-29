const SELECT_ALL_PAGINATED = `
SELECT 
  id, 
  ST_X(location::geometry) as longitude, 
  ST_Y(location::geometry) as latitude,
  count(*) over() as count
FROM 
  parkings 
ORDER BY 
  id 
LIMIT 
  $(limit) 
OFFSET
  $(offset)
`;

const SELECT_WITHIN_BOUNDS_PAGINATED = `
SELECT 
  id, 
  ST_X(location::geometry) as longitude, 
  ST_Y(location::geometry) as latitude,
  count(*) over() as count
FROM 
  parkings 
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
ORDER BY 
  id 
LIMIT 
  $(limit) 
OFFSET 
  $(offset)
`;

const SELECT_BY_ID = `
SELECT
    id,
    ST_X(location::geometry) as longitude,
    ST_Y(location::geometry) as latitude              
FROM
    parkings 
WHERE
    id = $(id)
`;

export { SELECT_ALL_PAGINATED, SELECT_BY_ID, SELECT_WITHIN_BOUNDS_PAGINATED };

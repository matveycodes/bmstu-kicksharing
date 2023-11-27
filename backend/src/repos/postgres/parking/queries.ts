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

const INSERT = `
INSERT INTO parkings (id, location)
VALUES ($(id), ST_Point($(location.longitude), $(location.latitude), 4326))
ON CONFLICT (id) DO UPDATE
SET id = $(id), location = ST_Point($(location.longitude), $(location.latitude), 4326)
`;

export {
  INSERT,
  SELECT_ALL_PAGINATED,
  SELECT_BY_ID,
  SELECT_WITHIN_BOUNDS_PAGINATED,
};

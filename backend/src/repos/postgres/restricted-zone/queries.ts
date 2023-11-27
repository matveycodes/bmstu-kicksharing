const SELECT_ALL_PAGINATED = `
SELECT 
  id, 
  speed_limit, 
  ST_AsGeoJSON(polygon) as polygon,
  count(*) over() as count
FROM
  restricted_zones
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
    speed_limit,
    ST_AsGeoJSON(polygon) as polygon 
FROM
    restricted_zones 
WHERE
    id = $(id)
`;

const INSERT = `
INSERT INTO restricted_zones (id, polygon, speed_limit)
VALUES ($(id), ST_Polygon($(polygon)::geometry, 4326), $(speedLimit))
ON CONFLICT (id) DO UPDATE
SET id = $(id), polygon = ST_Polygon($(polygon)::geometry, 4326), speed_limit = $(speedLimit)
`;

export { INSERT, SELECT_ALL_PAGINATED, SELECT_BY_ID };

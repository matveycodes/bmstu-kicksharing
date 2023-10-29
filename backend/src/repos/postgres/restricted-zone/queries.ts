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

export { SELECT_ALL_PAGINATED, SELECT_BY_ID };

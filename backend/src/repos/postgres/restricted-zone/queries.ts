const SELECT_ALL = `
SELECT
( 
  SELECT
    COUNT(*) 
  FROM
    restricted_zones ) as count,
    (
      SELECT
        json_agg(t.*) 
      FROM
        (
          SELECT 
            id, 
            speed_limit, 
            ST_AsGeoJSON(polygon) as polygon
          FROM
            restricted_zones
          ORDER BY
            id LIMIT $1 OFFSET $2 
        )
        AS t 
    )
    AS rows
`;

const SELECT_BY_ID = `
SELECT
    id,
    speed_limit,
    ST_AsGeoJSON(polygon) as polygon 
FROM
    restricted_zones 
WHERE
    id = $1
`;

export { SELECT_ALL, SELECT_BY_ID };

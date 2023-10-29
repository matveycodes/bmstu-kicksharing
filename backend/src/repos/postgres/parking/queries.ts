const SELECT_ALL = `
SELECT
( 
  SELECT
    COUNT(*) 
  FROM
    parkings ) as count,
    (
      SELECT
        json_agg(t.*) 
      FROM
        (
          SELECT
            id,
            ST_X(location::geometry) as longitude,
            ST_Y(location::geometry) as latitude 
          FROM
            parkings
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
    ST_X(location::geometry) as longitude,
    ST_Y(location::geometry) as latitude              
FROM
    parkings 
WHERE
    id = $1
`;

export { SELECT_BY_ID, SELECT_ALL };

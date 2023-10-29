const SELECT_ALL_PAGINATED = `
SELECT
  *,
  count(*) over() as count
FROM
  subscriptions
ORDER BY
  duration asc
LIMIT 
  $(limit) 
OFFSET 
  $(offset) 
`;

const SELECT_BY_ID = `
SELECT
    *       
FROM
    subscriptions 
WHERE
    id = $(id)
`;

export { SELECT_ALL_PAGINATED, SELECT_BY_ID };

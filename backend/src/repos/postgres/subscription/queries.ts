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

const INSERT = `
INSERT INTO subscriptions (id, title, price, duration)
VALUES ($(id), $(title), $(price), $(duration))
ON CONFLICT (id) DO UPDATE
SET id = $(id), title = $(title), price = $(price), duration = $(duration)
`;

export { INSERT, SELECT_ALL_PAGINATED, SELECT_BY_ID };

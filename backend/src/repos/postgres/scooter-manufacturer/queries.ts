const SELECT_BY_ID = `
SELECT
    *  
FROM
    scooter_manufacturers 
WHERE
    id = $(id)
`;

const INSERT = `
INSERT INTO scooter_manufacturers (id, title)
VALUES ($(id), $(title))
ON CONFLICT (id) DO UPDATE
SET id = $(id), title = $(title)
`;

export { INSERT, SELECT_BY_ID };

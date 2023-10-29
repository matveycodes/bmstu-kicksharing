const SELECT_BY_ID = `
SELECT
    *  
FROM
    scooter_manufacturers 
WHERE
    id = $(id)
`;

export { SELECT_BY_ID };

const SELECT_BY_ID = `
SELECT
    *  
FROM
    scooter_models
WHERE
    id = $(id)
`;

export { SELECT_BY_ID };

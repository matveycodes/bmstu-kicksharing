const SELECT_BY_ID = `
SELECT
    *  
FROM
    scooter_models
WHERE
    id = $(id)
`;

const INSERT = `
INSERT INTO scooter_models (id, title, single_charge_mileage, weight, max_speed, max_load, year, manufacturer_id)
VALUES ($(id), $(title), $(singleChargeMileage), $(weight), $(maxSpeed), $(maxLoad), $(year), $(manufacturerId))
ON CONFLICT (id) DO UPDATE
SET id = $(id), title = $(title), single_charge_mileage = $(singleChargeMileage), weight = $(weight), max_speed = $(maxSpeed), max_load = $(maxLoad), year = $(year), manufacturer_id = $(manufacturerId)
`;

export { INSERT, SELECT_BY_ID };

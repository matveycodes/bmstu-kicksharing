INSERT INTO scooter_models (manufacturer_id, title, single_charge_mileage, weight, max_speed, max_load, year)
SELECT id, 'KickScooter Max G30', 65, 20, 25, 100, 2022 FROM scooter_manufacturers WHERE title = 'Ninebot';
INSERT INTO scooter_models (manufacturer_id, title, single_charge_mileage, weight, max_speed, max_load, year)
SELECT id, 'KickScooter F25', 20, 15, 25, 100, 2021 FROM scooter_manufacturers WHERE title = 'Ninebot';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.288Z', p.location, 15, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT6552';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.616Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC8099';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.257Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM2082';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.412Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE0976';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.752Z', p.location, 19, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX5992';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.189Z', p.location, 9, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET2793';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.998Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA6531';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.355Z', p.location, 35, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX8435';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.138Z', p.location, 23, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA5778';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.085Z', p.location, 73, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO7685';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.762Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP6361';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.370Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB4348';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.545Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX1928';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.529Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO5916';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.049Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA9419';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.136Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB2737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.251Z', p.location, 82, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP1555';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.270Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK9747';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.256Z', p.location, 27, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE7794';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.869Z', p.location, 55, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE4501';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.590Z', p.location, 63, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE1610';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.756Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO7785';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.167Z', p.location, 60, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA5118';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.398Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA7336';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.885Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM5995';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.887Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH5349';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.685Z', p.location, 81, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX7598';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.681Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT0259';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.638Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM9039';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.663Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC6687';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.021Z', p.location, 3, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT5515';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.391Z', p.location, 49, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK8236';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.250Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP7613';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.690Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA6783';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.730Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM6546';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.327Z', p.location, 23, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA7103';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.238Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX0100';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.166Z', p.location, 66, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB4186';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.835Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO4628';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.322Z', p.location, 65, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO6710';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.029Z', p.location, 75, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM0408';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.753Z', p.location, 22, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX3844';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.838Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO9467';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.124Z', p.location, 11, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM6034';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.993Z', p.location, 85, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO2662';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.728Z', p.location, 39, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK8581';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.966Z', p.location, 45, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT1178';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.476Z', p.location, 39, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA4834';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.380Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM9938';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.559Z', p.location, 56, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA8017';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.641Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB8953';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.878Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB4464';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.746Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK6065';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.817Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK4299';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.379Z', p.location, 64, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH3623';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.664Z', p.location, 65, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM1846';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.005Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX6139';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.600Z', p.location, 21, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK8817';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.810Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT9567';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.548Z', p.location, 0, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB4896';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.921Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC3166';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.957Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE5165';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.725Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA1497';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.143Z', p.location, 49, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH2294';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.575Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO2281';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.351Z', p.location, 37, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE8278';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.692Z', p.location, 31, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE4245';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.411Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH7923';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.471Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA9065';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.188Z', p.location, 60, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM2008';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.479Z', p.location, 53, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP6412';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.722Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT9932';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.162Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC6305';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.145Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP4937';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.446Z', p.location, 74, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB9330';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.669Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK1139';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.803Z', p.location, 2, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX9740';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.555Z', p.location, 44, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX3890';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.629Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK4558';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.265Z', p.location, 25, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX4917';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.541Z', p.location, 85, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO9847';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.582Z', p.location, 29, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC8809';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.401Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM9991';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.895Z', p.location, 57, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC5111';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.314Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO1454';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.760Z', p.location, 18, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB4986';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.786Z', p.location, 32, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE6849';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.157Z', p.location, 99, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK4798';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:47.284Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE7314';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.006Z', p.location, 73, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE9310';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.118Z', p.location, 29, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM7197';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.652Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT2809';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.332Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK2001';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.688Z', p.location, 45, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO6057';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.354Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE3345';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.332Z', p.location, 64, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP0603';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.609Z', p.location, 19, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE8215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.275Z', p.location, 14, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP1042';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.390Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK7099';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.930Z', p.location, 86, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE4248';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.926Z', p.location, 75, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH0314';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.532Z', p.location, 47, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX6456';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.820Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE2202';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.084Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT5571';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.478Z', p.location, 96, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO7946';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.023Z', p.location, 5, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA7266';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.486Z', p.location, 68, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK9056';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.470Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC2159';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.542Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB4447';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.416Z', p.location, 27, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH6977';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.953Z', p.location, 53, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB6571';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.359Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC5583';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.855Z', p.location, 12, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB5106';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.843Z', p.location, 70, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT3088';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.314Z', p.location, 51, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX6737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.793Z', p.location, 68, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT9105';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.681Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA0166';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.508Z', p.location, 45, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO7465';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.429Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP8688';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.456Z', p.location, 32, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC4369';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.157Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX6603';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.993Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK6943';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.617Z', p.location, 48, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC3977';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.622Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM9663';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.816Z', p.location, 59, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE1250';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.546Z', p.location, 76, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP0743';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.097Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA7346';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.043Z', p.location, 63, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH2506';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:47.266Z', p.location, 8, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC6192';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.186Z', p.location, 40, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB2597';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.961Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO6653';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.860Z', p.location, 82, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM3813';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.926Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE6111';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.364Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA8474';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.531Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO8309';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.910Z', p.location, 81, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM2796';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.699Z', p.location, 75, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT8585';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.386Z', p.location, 94, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX9791';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.535Z', p.location, 97, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP2639';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.324Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC7088';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.880Z', p.location, 70, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX9922';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.405Z', p.location, 37, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB5981';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.865Z', p.location, 38, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX2953';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.019Z', p.location, 7, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT4295';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.644Z', p.location, 56, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB2480';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.936Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE7204';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.735Z', p.location, 23, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH9575';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.343Z', p.location, 93, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT9819';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.430Z', p.location, 89, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH1524';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.002Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE7905';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.961Z', p.location, 95, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP7800';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.688Z', p.location, 67, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP6373';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.953Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK2539';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.252Z', p.location, 98, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB6940';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.371Z', p.location, 40, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA5660';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.160Z', p.location, 33, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK1542';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.431Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC7310';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.150Z', p.location, 98, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB5513';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.663Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM8174';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.405Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK7654';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.798Z', p.location, 80, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC2888';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.649Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX3816';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.028Z', p.location, 56, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM0664';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.419Z', p.location, 25, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK9049';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.069Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP9857';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.755Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC9365';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.131Z', p.location, 22, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH0782';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.416Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM6692';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.736Z', p.location, 5, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX7667';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.669Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK6247';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.355Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX5034';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.071Z', p.location, 99, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH4664';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.140Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO2975';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.178Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB0203';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.999Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO7106';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.438Z', p.location, 0, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT4144';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.803Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO6576';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.233Z', p.location, 23, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX7155';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.878Z', p.location, 36, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK4991';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.151Z', p.location, 23, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE3662';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.891Z', p.location, 1, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO9867';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.041Z', p.location, 70, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM3331';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.540Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX5063';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:15.465Z', p.location, 95, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA9471';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.033Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC5185';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.765Z', p.location, 57, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO3180';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.717Z', p.location, 44, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK4731';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.138Z', p.location, 75, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX9699';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.275Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE8950';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.762Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK3584';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.468Z', p.location, 15, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE3163';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.016Z', p.location, 50, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK2512';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.318Z', p.location, 3, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK9745';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.415Z', p.location, 60, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX7042';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.024Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP0591';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.208Z', p.location, 33, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA4059';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.621Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA5565';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.931Z', p.location, 93, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP5232';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.639Z', p.location, 53, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK6028';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.997Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO9751';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.277Z', p.location, 59, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX8647';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.299Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM7162';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.836Z', p.location, 41, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP9654';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.926Z', p.location, 100, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO7158';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.244Z', p.location, 6, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT9892';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.137Z', p.location, 9, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT6024';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.540Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO7950';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.354Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM5031';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.781Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP1837';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.411Z', p.location, 59, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO1198';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.623Z', p.location, 10, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB3419';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.800Z', p.location, 7, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH7868';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.146Z', p.location, 47, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK7092';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.980Z', p.location, 19, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP4800';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.577Z', p.location, 22, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC7279';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.276Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA0611';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.071Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO1064';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.520Z', p.location, 96, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE7649';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.692Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT6219';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.206Z', p.location, 92, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB4414';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.630Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB3143';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.218Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK2427';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.022Z', p.location, 31, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT6313';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.988Z', p.location, 79, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH1591';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.195Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK2468';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.872Z', p.location, 5, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT0249';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.277Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH9290';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.858Z', p.location, 89, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX8531';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.528Z', p.location, 88, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP9597';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.392Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK8698';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.638Z', p.location, 29, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB4945';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.092Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT4487';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.879Z', p.location, 41, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP9142';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.351Z', p.location, 89, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB0057';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.175Z', p.location, 59, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE8045';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.770Z', p.location, 27, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC8123';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.424Z', p.location, 47, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK7819';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.823Z', p.location, 38, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO8938';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.148Z', p.location, 34, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA6993';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.196Z', p.location, 100, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM4759';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.437Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE3723';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.830Z', p.location, 62, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA3963';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:35.376Z', p.location, 2, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT4495';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.452Z', p.location, 12, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA7151';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.411Z', p.location, 1, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM4228';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.816Z', p.location, 29, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC2705';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.530Z', p.location, 1, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC6372';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.684Z', p.location, 97, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO0965';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:36.871Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH9458';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.617Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO1046';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.842Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX7059';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.914Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE7742';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.786Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP4101';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:36.978Z', p.location, 51, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH8923';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.762Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA1321';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.473Z', p.location, 59, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH9628';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:35.468Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM1875';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.923Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA5233';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.312Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT1257';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.622Z', p.location, 37, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT4498';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.273Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP3966';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.911Z', p.location, 16, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH0748';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.825Z', p.location, 59, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO3434';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.890Z', p.location, 20, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA5535';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.842Z', p.location, 95, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP5766';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.143Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE9937';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.621Z', p.location, 47, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK0293';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.520Z', p.location, 91, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM8182';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.085Z', p.location, 19, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO6113';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.364Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM4201';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.842Z', p.location, 36, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA9600';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.013Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE9299';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.528Z', p.location, 79, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP7927';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.044Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX0296';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.139Z', p.location, 41, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT5363';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.922Z', p.location, 73, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK9110';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.960Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH1049';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.616Z', p.location, 35, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH7737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.655Z', p.location, 6, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME5497';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.768Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX4391';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.047Z', p.location, 74, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA8085';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.195Z', p.location, 80, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK0441';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.331Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC6119';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.269Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX8499';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.956Z', p.location, 71, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK6247';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.695Z', p.location, 67, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT3689';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.464Z', p.location, 12, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP8556';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.135Z', p.location, 60, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE0368';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.888Z', p.location, 47, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK5413';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.396Z', p.location, 53, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB9315';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.503Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX5559';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.566Z', p.location, 80, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA8692';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.386Z', p.location, 82, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK0841';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.079Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE4673';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.997Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT8713';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.757Z', p.location, 88, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO5573';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.207Z', p.location, 24, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA8208';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.029Z', p.location, 84, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT6882';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.545Z', p.location, 12, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK2124';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.330Z', p.location, 99, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC3792';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.600Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK7322';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.912Z', p.location, 31, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT1307';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.138Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA5031';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.456Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX3446';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.735Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET7313';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.838Z', p.location, 57, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB5410';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.882Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT7413';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.070Z', p.location, 91, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA5877';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.323Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP7234';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.050Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE4058';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.996Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK7961';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.619Z', p.location, 97, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH6540';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.995Z', p.location, 9, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC6891';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.518Z', p.location, 92, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM7915';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.686Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE4274';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.781Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB3467';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.886Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP1615';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.156Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO6878';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.698Z', p.location, 29, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC5746';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.434Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH6881';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.762Z', p.location, 69, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH6675';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.460Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP4988';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.418Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME1345';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.812Z', p.location, 20, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX2617';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.382Z', p.location, 53, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM5994';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.659Z', p.location, 85, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB6293';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.866Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC9151';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.078Z', p.location, 42, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX7034';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.760Z', p.location, 90, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO9496';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.814Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX9365';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.652Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC3068';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.393Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM3791';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.939Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC6005';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.483Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK7751';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.809Z', p.location, 1, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX2189';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.046Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM6882';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.193Z', p.location, 76, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK7085';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.691Z', p.location, 76, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM8566';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.225Z', p.location, 61, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC8602';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.293Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO5740';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.720Z', p.location, 27, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO3689';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.985Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK4233';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.119Z', p.location, 11, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO7730';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.081Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH1411';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.646Z', p.location, 82, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH2967';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.498Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA6289';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.563Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA2461';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.610Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE4725';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.403Z', p.location, 21, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA6805';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.485Z', p.location, 49, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB8596';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.448Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX7547';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.996Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE9045';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.188Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM4869';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.584Z', p.location, 69, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP0640';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.704Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM0001';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.327Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC0199';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.725Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC4790';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.871Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK2621';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.042Z', p.location, 82, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK9580';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.757Z', p.location, 89, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK3652';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.698Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX4212';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.278Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC9101';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.144Z', p.location, 96, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM6531';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.803Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM2867';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.401Z', p.location, 89, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA3859';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.482Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE3687';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.398Z', p.location, 24, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH5187';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.612Z', p.location, 9, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH3432';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.555Z', p.location, 88, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA3326';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.261Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT3606';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.704Z', p.location, 18, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT9997';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.387Z', p.location, 25, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX1951';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.026Z', p.location, 34, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT7436';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.231Z', p.location, 64, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO4683';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.095Z', p.location, 70, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM8495';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.211Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP4188';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.731Z', p.location, 17, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP8781';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.462Z', p.location, 47, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB7325';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.023Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE1330';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.788Z', p.location, 88, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH4090';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.449Z', p.location, 38, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB1571';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.001Z', p.location, 98, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX6877';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.076Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM7525';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.131Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM2541';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.798Z', p.location, 19, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA4164';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.917Z', p.location, 96, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK1533';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.318Z', p.location, 99, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC3330';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.788Z', p.location, 4, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK6284';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.742Z', p.location, 74, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK8032';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.615Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME7549';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.608Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT9710';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.101Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB4813';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.898Z', p.location, 96, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK9879';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.061Z', p.location, 48, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP6630';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:57.226Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP9276';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.682Z', p.location, 3, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA1596';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.107Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT0407';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.545Z', p.location, 51, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA2057';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.338Z', p.location, 35, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA2240';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.701Z', p.location, 96, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC0467';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.279Z', p.location, 51, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH7606';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.801Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB5300';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.685Z', p.location, 76, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO5037';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.165Z', p.location, 92, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO6382';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:58.938Z', p.location, 37, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME6120';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.337Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK2606';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.206Z', p.location, 42, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH1755';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.946Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB5302';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.865Z', p.location, 76, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK3636';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.734Z', p.location, 24, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB8807';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.870Z', p.location, 21, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB6586';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.559Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK9407';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.938Z', p.location, 14, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK8851';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.666Z', p.location, 70, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC7505';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.931Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA5262';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.235Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM3072';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.716Z', p.location, 68, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX1555';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.950Z', p.location, 5, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM8294';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.808Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM9959';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.807Z', p.location, 44, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP0322';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.800Z', p.location, 39, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP3063';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.445Z', p.location, 85, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB2522';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.383Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE0262';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.721Z', p.location, 31, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK6853';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.334Z', p.location, 40, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX1819';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.675Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB5298';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.526Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP2841';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.478Z', p.location, 76, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB1485';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.549Z', p.location, 7, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH9326';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.051Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM7152';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.538Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK5290';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.418Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE3611';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.773Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK5834';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.698Z', p.location, 76, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE0782';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.939Z', p.location, 44, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX4361';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.747Z', p.location, 23, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE2439';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.688Z', p.location, 48, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX7750';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.583Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB7336';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.118Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK4336';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.698Z', p.location, 48, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP6101';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.303Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE6559';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.970Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT3622';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.926Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT8338';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.001Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA3905';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.232Z', p.location, 99, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC2270';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.656Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT0630';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.835Z', p.location, 92, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH1466';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.975Z', p.location, 12, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB5710';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.749Z', p.location, 92, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB8868';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.977Z', p.location, 26, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME2777';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.185Z', p.location, 79, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE8500';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.276Z', p.location, 86, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB1408';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.940Z', p.location, 8, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC5541';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.869Z', p.location, 63, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH2729';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.439Z', p.location, 36, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT6916';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.990Z', p.location, 11, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX0084';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.073Z', p.location, 32, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK0262';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.434Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO9979';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.003Z', p.location, 69, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH0196';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.659Z', p.location, 46, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB4025';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.000Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE6836';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.183Z', p.location, 9, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH6957';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.790Z', p.location, 49, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX0333';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.963Z', p.location, 23, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA2164';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.152Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK5955';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.315Z', p.location, 67, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB0312';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.830Z', p.location, 96, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP8881';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.230Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM3404';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.071Z', p.location, 9, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH5181';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.966Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB5676';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.680Z', p.location, 49, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT6041';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.931Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP8308';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.816Z', p.location, 69, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO9016';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.091Z', p.location, 63, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE3221';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.282Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT0602';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.374Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE8250';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.143Z', p.location, 87, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK8967';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.219Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO8206';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.051Z', p.location, 53, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM0788';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.933Z', p.location, 49, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH9968';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.693Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA6203';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.520Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM5249';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.643Z', p.location, 60, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC1565';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.872Z', p.location, 0, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO9049';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.754Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX6915';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.182Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC9100';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.467Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA7390';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.345Z', p.location, 26, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM9671';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.218Z', p.location, 80, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP1582';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.845Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM1569';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.369Z', p.location, 22, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX8096';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.643Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC4066';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.579Z', p.location, 82, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO1614';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.801Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC0184';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.197Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA8542';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.922Z', p.location, 45, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO9498';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.561Z', p.location, 47, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH3878';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.572Z', p.location, 69, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP7112';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.188Z', p.location, 17, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB0329';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.539Z', p.location, 82, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB7099';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.788Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA6329';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.592Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE0828';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.064Z', p.location, 78, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX3458';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.070Z', p.location, 1, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP7434';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.542Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO0512';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.181Z', p.location, 39, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT2320';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.029Z', p.location, 69, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO9400';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.105Z', p.location, 42, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB3404';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.334Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX1544';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.456Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB8591';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.782Z', p.location, 99, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH2797';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.433Z', p.location, 9, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK8889';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.899Z', p.location, 11, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM3934';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.379Z', p.location, 68, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH9486';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:15.203Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX7140';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.287Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC5486';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.324Z', p.location, 93, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA3410';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.319Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP4518';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.000Z', p.location, 85, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB3993';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.416Z', p.location, 61, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO9372';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.167Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE2498';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.209Z', p.location, 54, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX2508';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.225Z', p.location, 0, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM4017';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.609Z', p.location, 88, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT4420';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.650Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB8244';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.071Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO2384';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.469Z', p.location, 20, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE1365';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.941Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK6846';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.572Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB5777';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.482Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM8266';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.477Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO0040';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.153Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP0693';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.637Z', p.location, 86, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO1870';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.370Z', p.location, 32, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT6756';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.481Z', p.location, 15, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC0318';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.077Z', p.location, 1, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB4392';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.348Z', p.location, 77, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB4338';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.477Z', p.location, 91, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH5749';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.803Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA3191';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.204Z', p.location, 6, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE0177';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.300Z', p.location, 99, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT0978';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.202Z', p.location, 9, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH5944';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.081Z', p.location, 68, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC3909';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.051Z', p.location, 49, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP7129';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.028Z', p.location, 29, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE5998';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.527Z', p.location, 42, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB6091';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.138Z', p.location, 73, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM2197';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.824Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC4118';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.012Z', p.location, 41, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB4927';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.445Z', p.location, 56, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK9275';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.416Z', p.location, 24, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK5128';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.940Z', p.location, 68, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP1384';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.777Z', p.location, 97, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC9955';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.540Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT8317';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.548Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO2826';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.668Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO6034';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.438Z', p.location, 37, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB7602';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.997Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM9818';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.158Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC6751';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.751Z', p.location, 30, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB8954';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.639Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT3102';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.978Z', p.location, 92, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO9598';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.315Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO1860';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.442Z', p.location, 47, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA6157';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.136Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP8984';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.572Z', p.location, 100, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH4067';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.220Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT4107';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.052Z', p.location, 28, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC7982';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.956Z', p.location, 92, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO7245';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.753Z', p.location, 10, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA7570';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.273Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP7389';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.278Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA6676';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.344Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK6908';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.019Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH6322';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.399Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE1009';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.100Z', p.location, 30, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB9093';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.206Z', p.location, 32, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT8273';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.142Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK1117';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.653Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX6828';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.649Z', p.location, 98, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX9433';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.171Z', p.location, 37, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM5905';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.555Z', p.location, 62, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX5650';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.074Z', p.location, 33, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP6790';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.084Z', p.location, 82, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM4844';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.331Z', p.location, 8, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB0558';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.651Z', p.location, 82, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB8839';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.995Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX0489';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.828Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM8946';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.869Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC5360';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.984Z', p.location, 29, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO6663';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.916Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM5579';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.569Z', p.location, 1, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM7513';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.628Z', p.location, 27, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC3220';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.737Z', p.location, 15, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB8315';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.823Z', p.location, 87, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK6580';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.369Z', p.location, 52, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM7713';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.597Z', p.location, 24, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK6983';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.199Z', p.location, 60, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO7204';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.461Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH5534';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.795Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK3919';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.209Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK7115';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.256Z', p.location, 41, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT5767';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.627Z', p.location, 48, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH1778';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.673Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB5395';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.560Z', p.location, 40, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH2882';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.898Z', p.location, 74, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA9345';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.787Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC6960';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.654Z', p.location, 50, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB9354';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.705Z', p.location, 31, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB2249';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.310Z', p.location, 80, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO2963';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.228Z', p.location, 10, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE6254';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.638Z', p.location, 43, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK5635';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.014Z', p.location, 82, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP0752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.768Z', p.location, 89, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT0651';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.086Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA9606';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.864Z', p.location, 91, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH2340';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:47.079Z', p.location, 78, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP8946';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.380Z', p.location, 47, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM5832';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.971Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK2820';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.727Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO0260';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.617Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE5911';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.121Z', p.location, 37, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT6858';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.001Z', p.location, 46, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO5734';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.149Z', p.location, 11, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK1466';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.940Z', p.location, 15, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM2287';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.414Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO8215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.955Z', p.location, 34, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX6547';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.917Z', p.location, 47, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB1663';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.230Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC3983';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.631Z', p.location, 68, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC2575';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.846Z', p.location, 3, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH0025';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.806Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH8197';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.895Z', p.location, 83, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT4859';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.884Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM7838';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.015Z', p.location, 46, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX1277';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.967Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB5309';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.137Z', p.location, 56, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC3710';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.396Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM3644';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.398Z', p.location, 59, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX9986';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.924Z', p.location, 96, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX3557';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.239Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT8571';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.026Z', p.location, 82, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH9357';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.067Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP1890';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.517Z', p.location, 15, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB9912';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.928Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO3900';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.734Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM8640';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.873Z', p.location, 23, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA6193';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.818Z', p.location, 54, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX0256';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.434Z', p.location, 65, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX0536';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.167Z', p.location, 31, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB8227';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.404Z', p.location, 42, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE9132';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.165Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH6304';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.842Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP3455';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.341Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC6109';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.901Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB4051';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.645Z', p.location, 70, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP6600';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.234Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX5523';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.473Z', p.location, 62, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK1680';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.467Z', p.location, 11, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX0125';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.329Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM3335';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.300Z', p.location, 83, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM0956';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.571Z', p.location, 23, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP5410';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.711Z', p.location, 97, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM3029';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.868Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH4426';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.608Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC9808';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.732Z', p.location, 39, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH6598';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.969Z', p.location, 91, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM8661';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.815Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX6599';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.680Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC7656';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.911Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC5638';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.778Z', p.location, 89, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE4111';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.023Z', p.location, 29, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH6113';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.249Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME0567';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:47.080Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK9267';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.348Z', p.location, 87, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE1557';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.301Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE3543';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.640Z', p.location, 24, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM5670';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.427Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH0094';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.953Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK7877';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.647Z', p.location, 98, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO7310';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:24.699Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM8869';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.160Z', p.location, 46, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC0264';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.937Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO9689';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.134Z', p.location, 64, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB6137';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:36.229Z', p.location, 10, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM5491';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.989Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE6210';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.377Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB2532';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.801Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT3890';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.451Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK9443';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.381Z', p.location, 9, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO6406';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.349Z', p.location, 74, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK4214';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:55.174Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO7299';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.164Z', p.location, 59, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP0047';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.748Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE0504';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.237Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK5259';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:24.130Z', p.location, 100, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO0716';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.025Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC7206';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.370Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA2481';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.747Z', p.location, 0, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT3628';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.424Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA7459';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.661Z', p.location, 50, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA6981';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.158Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP1356';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.818Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP2296';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.039Z', p.location, 14, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO0663';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.063Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP7946';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.132Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP0739';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.289Z', p.location, 90, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB2612';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.672Z', p.location, 22, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC6527';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.807Z', p.location, 99, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK0816';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.679Z', p.location, 26, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC4917';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.994Z', p.location, 76, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK4611';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.919Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX9963';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.245Z', p.location, 19, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX4844';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.148Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH1454';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.805Z', p.location, 1, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX4417';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.202Z', p.location, 79, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB2660';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.135Z', p.location, 24, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM5723';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.090Z', p.location, 56, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP7731';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.406Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO5768';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.635Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT2886';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.135Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX3719';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.647Z', p.location, 11, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT0774';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:36.657Z', p.location, 34, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP4021';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.790Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT4423';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.753Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC1516';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.044Z', p.location, 9, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT4145';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.298Z', p.location, 54, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA3784';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.033Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB2862';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.937Z', p.location, 10, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE4852';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.679Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH7706';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.574Z', p.location, 77, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH3230';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.796Z', p.location, 98, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM3812';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.900Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET7337';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.104Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH9379';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.005Z', p.location, 50, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH2935';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.782Z', p.location, 93, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX6269';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.837Z', p.location, 68, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT0706';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.220Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX3218';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.662Z', p.location, 19, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA7532';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.748Z', p.location, 42, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM8538';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.346Z', p.location, 2, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA9904';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.369Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE4164';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.238Z', p.location, 23, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT4959';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.124Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP7082';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.163Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX2215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.518Z', p.location, 51, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM3713';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.717Z', p.location, 75, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK4140';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.558Z', p.location, 18, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK3467';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.725Z', p.location, 79, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB0312';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.579Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC3104';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.434Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK7409';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.592Z', p.location, 0, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE6245';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.979Z', p.location, 54, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB1082';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.645Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM6943';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.011Z', p.location, 64, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM4691';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.443Z', p.location, 30, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX0722';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.245Z', p.location, 9, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT8209';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.192Z', p.location, 14, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX9885';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.269Z', p.location, 88, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH4447';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.522Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP9935';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.456Z', p.location, 30, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO2905';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.261Z', p.location, 47, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC9774';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.727Z', p.location, 33, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE7912';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.417Z', p.location, 85, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK9805';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.627Z', p.location, 60, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH5876';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.065Z', p.location, 14, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM2980';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.812Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA4799';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.918Z', p.location, 95, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH8511';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:36.633Z', p.location, 17, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT1194';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.683Z', p.location, 59, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP7398';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.804Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE1409';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.572Z', p.location, 24, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC6281';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.195Z', p.location, 56, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT4777';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.912Z', p.location, 84, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH3039';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:15.514Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK1740';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.315Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE2499';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.369Z', p.location, 1, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE8292';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.600Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE8454';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.192Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC8722';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.754Z', p.location, 37, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA0427';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.933Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM0878';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.718Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE3639';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.964Z', p.location, 54, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA8581';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.159Z', p.location, 93, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX2509';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.892Z', p.location, 48, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH2045';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.368Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO7864';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.899Z', p.location, 31, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE4803';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.732Z', p.location, 83, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB9568';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.487Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX8627';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.964Z', p.location, 98, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC3866';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.969Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT9246';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.014Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH3366';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.456Z', p.location, 89, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP3754';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.032Z', p.location, 88, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA7345';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.420Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA9688';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.475Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP3094';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.477Z', p.location, 42, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT6068';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.895Z', p.location, 77, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP6468';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.469Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT1251';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.905Z', p.location, 86, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC4805';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.863Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE2794';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.677Z', p.location, 72, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC0879';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.491Z', p.location, 85, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP5712';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.960Z', p.location, 24, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP4307';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.684Z', p.location, 73, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE4881';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.796Z', p.location, 20, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK0574';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.108Z', p.location, 51, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC2691';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.638Z', p.location, 32, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC1291';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.380Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT5702';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.447Z', p.location, 36, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA1470';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.309Z', p.location, 85, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC9792';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.420Z', p.location, 93, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA0040';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.369Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE4459';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.041Z', p.location, 41, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM5778';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.777Z', p.location, 89, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM4183';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.799Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX1237';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.197Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT9947';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.003Z', p.location, 3, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB6194';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.316Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT2650';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.881Z', p.location, 12, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA6817';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.731Z', p.location, 47, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK8115';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.605Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT9066';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.435Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC3571';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.388Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA4803';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.897Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA7556';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.631Z', p.location, 39, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH2192';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.450Z', p.location, 33, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX6412';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.665Z', p.location, 91, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM5060';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.478Z', p.location, 15, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE7526';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.203Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC9867';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.922Z', p.location, 36, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE5290';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:20.501Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH4341';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.345Z', p.location, 100, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB9223';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.862Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH3114';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.069Z', p.location, 70, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO8583';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.674Z', p.location, 56, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA6907';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.079Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC6885';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.913Z', p.location, 81, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE0986';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.622Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB3878';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.588Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO0104';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.169Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB9902';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.687Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO6113';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.802Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE5879';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.223Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA2493';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.385Z', p.location, 22, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK6463';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.213Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX8107';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.176Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA2460';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.420Z', p.location, 82, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT7629';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:00.837Z', p.location, 12, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA3415';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.935Z', p.location, 63, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT5259';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.558Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC8183';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.744Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET6163';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.408Z', p.location, 12, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA0498';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.984Z', p.location, 18, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE8844';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.951Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA5611';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.811Z', p.location, 31, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA6442';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.070Z', p.location, 31, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT1638';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.493Z', p.location, 87, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH5506';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.587Z', p.location, 15, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP0723';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.967Z', p.location, 22, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB4281';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.271Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK5672';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.159Z', p.location, 28, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT9150';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.389Z', p.location, 63, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB4935';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.317Z', p.location, 42, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH8738';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.607Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP2808';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.275Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH8542';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.837Z', p.location, 49, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH8751';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.359Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC4540';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.199Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK4564';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.752Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT6529';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.055Z', p.location, 78, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC2796';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:55.283Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK8254';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.680Z', p.location, 43, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO2299';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.025Z', p.location, 49, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH4443';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.113Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB5752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.530Z', p.location, 14, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP4325';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:58.983Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA6032';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.807Z', p.location, 68, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM6037';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.452Z', p.location, 7, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM7535';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.551Z', p.location, 96, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA1010';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.919Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK3577';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.931Z', p.location, 31, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH3447';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.581Z', p.location, 41, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP1278';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.257Z', p.location, 75, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME5505';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.483Z', p.location, 47, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB2769';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.510Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA2897';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.104Z', p.location, 86, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO0509';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:55.673Z', p.location, 37, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX2701';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.187Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO4735';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.878Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM2851';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.702Z', p.location, 2, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK6465';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.543Z', p.location, 92, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH7244';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:28.194Z', p.location, 45, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO2046';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.432Z', p.location, 28, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB3707';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.154Z', p.location, 6, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX5671';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.359Z', p.location, 38, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO2877';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.283Z', p.location, 20, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM7282';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:00.877Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM3479';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.008Z', p.location, 76, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK3192';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.499Z', p.location, 18, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE7732';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.787Z', p.location, 100, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA0504';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.915Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE7741';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.507Z', p.location, 3, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT1555';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.186Z', p.location, 78, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH3831';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.001Z', p.location, 36, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT7174';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.297Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX4095';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.385Z', p.location, 86, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK4167';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.049Z', p.location, 73, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO0760';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.666Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA5381';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.780Z', p.location, 45, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA3170';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.207Z', p.location, 5, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE8581';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.817Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK3755';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.861Z', p.location, 82, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM5308';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.015Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM9882';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.979Z', p.location, 46, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC9928';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.411Z', p.location, 56, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE2269';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.569Z', p.location, 31, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC4018';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.254Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO6997';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.568Z', p.location, 24, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT0789';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.625Z', p.location, 4, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK0823';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.955Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM3161';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.174Z', p.location, 37, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB9186';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.877Z', p.location, 96, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA1927';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.330Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA4418';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.691Z', p.location, 47, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT9753';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.973Z', p.location, 19, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM2381';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.105Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC7402';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.592Z', p.location, 84, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT5977';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.117Z', p.location, 69, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB0771';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.012Z', p.location, 54, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH9220';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.331Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE7998';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.035Z', p.location, 76, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE4689';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.723Z', p.location, 69, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM8593';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.572Z', p.location, 95, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA8213';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.906Z', p.location, 19, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC0137';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.469Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB4397';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.500Z', p.location, 12, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT9817';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.148Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE2907';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.706Z', p.location, 80, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM4771';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.573Z', p.location, 72, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC6753';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.248Z', p.location, 43, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM3880';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.577Z', p.location, 65, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE1244';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.807Z', p.location, 40, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO6475';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.356Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX4297';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.709Z', p.location, 48, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE2939';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.611Z', p.location, 8, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT9127';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.358Z', p.location, 43, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP6602';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.053Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC2805';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.056Z', p.location, 50, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE7031';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:36.913Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA7276';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.723Z', p.location, 63, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK7842';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.980Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB1620';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.829Z', p.location, 59, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX0106';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:57.339Z', p.location, 13, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE4292';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.668Z', p.location, 59, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB7199';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.769Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC9209';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.797Z', p.location, 56, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT5111';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.144Z', p.location, 84, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK7684';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.001Z', p.location, 51, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP6652';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.712Z', p.location, 85, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET4519';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.525Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE6434';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.465Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP8666';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.746Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM7835';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.909Z', p.location, 78, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP3777';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.365Z', p.location, 1, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX8898';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.744Z', p.location, 51, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE6095';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.262Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE5739';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.918Z', p.location, 83, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP0816';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.068Z', p.location, 5, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB2988';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.580Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE8682';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:20.149Z', p.location, 10, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT9244';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.779Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT1367';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.573Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT1094';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.264Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM5920';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.335Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM0744';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.631Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET0538';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.321Z', p.location, 69, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK2550';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.800Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP0234';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:36.997Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP0294';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.461Z', p.location, 6, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE7155';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.247Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX9641';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.558Z', p.location, 80, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC6579';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.872Z', p.location, 33, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC1778';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:28.768Z', p.location, 59, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH2156';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.256Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB8372';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.797Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX8765';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.278Z', p.location, 75, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP8037';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.910Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME0281';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.037Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK8566';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.311Z', p.location, 37, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT8135';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.128Z', p.location, 100, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT8839';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.258Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT5321';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.267Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC5829';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.984Z', p.location, 65, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM2457';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.447Z', p.location, 11, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA3189';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.114Z', p.location, 43, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE4990';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.445Z', p.location, 87, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK9404';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.854Z', p.location, 36, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO4098';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.937Z', p.location, 26, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE0286';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.059Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX1694';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.761Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB7847';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.404Z', p.location, 82, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT9960';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.970Z', p.location, 59, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO7214';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.732Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH2024';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.452Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT5050';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.830Z', p.location, 23, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT6430';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.278Z', p.location, 88, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX9408';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.725Z', p.location, 26, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM5700';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.723Z', p.location, 87, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB7947';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.337Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA7801';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.378Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM7435';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.637Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE5981';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.869Z', p.location, 0, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT8636';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.583Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT4623';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.341Z', p.location, 36, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP6232';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.642Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA8671';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.914Z', p.location, 84, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP5810';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.992Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC4271';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.572Z', p.location, 27, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA8232';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.123Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC9284';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:31.606Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK1659';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.790Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH5672';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.209Z', p.location, 25, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT2988';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.597Z', p.location, 26, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC2499';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.860Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE6871';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.275Z', p.location, 5, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK4364';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.356Z', p.location, 98, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB3887';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.588Z', p.location, 58, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH2072';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.615Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP8289';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.238Z', p.location, 56, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB5771';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.343Z', p.location, 51, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK2623';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.010Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK7328';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.525Z', p.location, 30, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC4358';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.994Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE7196';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.501Z', p.location, 34, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH2455';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.522Z', p.location, 86, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM1130';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.296Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC7728';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.524Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA2450';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.045Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK3810';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.656Z', p.location, 69, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP8508';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.298Z', p.location, 9, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM6653';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.716Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA0317';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.067Z', p.location, 100, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX4213';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.446Z', p.location, 22, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP5058';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.435Z', p.location, 66, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC7633';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.708Z', p.location, 50, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM0360';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.821Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO3759';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.697Z', p.location, 65, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM2462';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.239Z', p.location, 67, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT6135';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:35.864Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM0728';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:57.159Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK9547';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.720Z', p.location, 74, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP9490';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.021Z', p.location, 56, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC4499';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.518Z', p.location, 39, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT5126';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.091Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK8860';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.165Z', p.location, 12, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC5195';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.259Z', p.location, 39, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP7379';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:24.656Z', p.location, 17, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC5705';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.067Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX0310';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.067Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH0719';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.864Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE3329';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.481Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB6295';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.791Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP0505';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.396Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM5958';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.274Z', p.location, 21, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO6638';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.018Z', p.location, 72, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO2215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.009Z', p.location, 100, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA4827';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.993Z', p.location, 41, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT3827';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.027Z', p.location, 30, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK3304';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.434Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX1816';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.697Z', p.location, 69, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE1565';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.772Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM9796';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.680Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM3275';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:36.083Z', p.location, 70, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE5069';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.283Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH7047';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.674Z', p.location, 44, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB6986';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.761Z', p.location, 33, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA4486';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.525Z', p.location, 40, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH0000';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.103Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX3970';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.965Z', p.location, 17, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB1127';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.735Z', p.location, 43, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM2740';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.188Z', p.location, 23, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM0151';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:36.296Z', p.location, 6, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX3961';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.315Z', p.location, 75, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE0169';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.537Z', p.location, 79, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB9374';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.379Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH3412';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.497Z', p.location, 97, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO7011';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.720Z', p.location, 10, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB9366';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.705Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP7945';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.081Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME4388';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.806Z', p.location, 80, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP9701';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.750Z', p.location, 0, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM3214';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.846Z', p.location, 55, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA7771';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.638Z', p.location, 40, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP0689';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.660Z', p.location, 84, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX2880';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.524Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP5900';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.350Z', p.location, 88, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE3106';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.475Z', p.location, 26, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM9337';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.407Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO5350';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.463Z', p.location, 15, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO3594';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.675Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO9920';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.990Z', p.location, 86, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO2379';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.454Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB4192';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.288Z', p.location, 41, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO1021';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.470Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA5284';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.411Z', p.location, 39, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM9800';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.262Z', p.location, 32, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT2036';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.262Z', p.location, 43, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB6594';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.146Z', p.location, 5, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC8911';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.374Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO7243';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.712Z', p.location, 20, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK0180';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.722Z', p.location, 20, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK9901';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.683Z', p.location, 80, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT9548';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.969Z', p.location, 40, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM5973';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.342Z', p.location, 1, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC2450';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.549Z', p.location, 35, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME4868';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.428Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA0873';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.996Z', p.location, 44, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP1350';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.765Z', p.location, 87, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC1801';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.314Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH4543';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.477Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT7886';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.349Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB5524';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.073Z', p.location, 9, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH2140';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.260Z', p.location, 60, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH9414';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:24.659Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH0005';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.071Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM0393';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.354Z', p.location, 63, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO2972';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.482Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC4546';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.247Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB9634';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:17.879Z', p.location, 63, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK5030';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.193Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX0234';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.007Z', p.location, 44, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC1125';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.189Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO4313';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.098Z', p.location, 7, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE8609';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.857Z', p.location, 84, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA1105';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.520Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX1662';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:55.077Z', p.location, 76, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP5923';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.044Z', p.location, 48, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP4721';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.838Z', p.location, 0, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE0100';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.471Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH3474';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.900Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE9182';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.084Z', p.location, 16, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB5494';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.983Z', p.location, 61, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT9718';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.921Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK4976';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.691Z', p.location, 12, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MB1198';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.298Z', p.location, 69, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK1974';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.501Z', p.location, 89, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET0698';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.512Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC3609';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.835Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH5383';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.395Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET9880';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.511Z', p.location, 65, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB2882';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.466Z', p.location, 6, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO8694';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.374Z', p.location, 68, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP8943';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.192Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC0464';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.756Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC8814';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.040Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP4233';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.963Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH3047';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.171Z', p.location, 94, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB7107';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.601Z', p.location, 55, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP8526';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.761Z', p.location, 19, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX2165';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.821Z', p.location, 6, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM6939';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.533Z', p.location, 100, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP0532';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.055Z', p.location, 50, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM6639';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.940Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM9313';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.246Z', p.location, 84, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK9610';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.663Z', p.location, 27, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP6735';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.647Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH2170';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.659Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE9568';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.959Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH8429';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.763Z', p.location, 64, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH5177';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.284Z', p.location, 7, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE1422';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.130Z', p.location, 99, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK7627';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.624Z', p.location, 95, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK5958';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.706Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET8663';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:36.333Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH3307';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.943Z', p.location, 3, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM3669';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.656Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP7436';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.776Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB3168';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.105Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO9879';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.639Z', p.location, 19, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM1413';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.303Z', p.location, 12, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM4397';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.801Z', p.location, 91, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH2082';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.090Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM2892';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.428Z', p.location, 24, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB3599';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.578Z', p.location, 6, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM8410';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.482Z', p.location, 32, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX2709';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.099Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK4827';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.088Z', p.location, 82, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT4891';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.236Z', p.location, 23, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT5501';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.633Z', p.location, 31, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX3552';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.039Z', p.location, 30, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC5709';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.320Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK0567';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.113Z', p.location, 96, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC3303';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.135Z', p.location, 84, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE8288';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.354Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM5604';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.901Z', p.location, 87, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP2001';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.656Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH9969';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.387Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB9145';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.767Z', p.location, 88, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH4787';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.212Z', p.location, 10, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC1743';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.341Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM7052';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.003Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME1395';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.848Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT9477';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.118Z', p.location, 48, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM0908';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.890Z', p.location, 40, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC7622';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.388Z', p.location, 92, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET6082';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.585Z', p.location, 57, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH4069';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.784Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH9008';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.388Z', p.location, 38, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB7007';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.473Z', p.location, 85, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE8785';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.249Z', p.location, 49, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC7729';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.373Z', p.location, 51, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB0935';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.862Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT5595';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.861Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK4767';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.965Z', p.location, 40, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX5340';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:55.704Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE3345';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.581Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC4515';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.280Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH3686';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.747Z', p.location, 7, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT3944';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.076Z', p.location, 88, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX8645';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.802Z', p.location, 71, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC9795';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.159Z', p.location, 84, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA9876';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.816Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK7168';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.372Z', p.location, 82, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM5264';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.344Z', p.location, 80, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP9485';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.878Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC1262';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.534Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB5483';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.627Z', p.location, 55, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP5607';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.681Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB9072';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.970Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP1357';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.493Z', p.location, 60, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO7921';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.274Z', p.location, 12, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP8330';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.333Z', p.location, 2, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT0356';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.735Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX1687';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.452Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM1980';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.455Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP5226';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.808Z', p.location, 29, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM3227';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.193Z', p.location, 70, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO7841';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.585Z', p.location, 8, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA0183';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.700Z', p.location, 90, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP4077';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.630Z', p.location, 98, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX0339';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.645Z', p.location, 37, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB3751';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.202Z', p.location, 12, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM2950';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.951Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB8050';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.901Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK7849';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.612Z', p.location, 19, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX0863';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.731Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE3273';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.529Z', p.location, 36, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA9591';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.461Z', p.location, 30, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT5787';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.269Z', p.location, 1, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA6234';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.618Z', p.location, 19, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA0414';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.010Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE0466';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.393Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC3120';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.657Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM9108';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.642Z', p.location, 18, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO1387';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.094Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC5722';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.467Z', p.location, 60, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC8904';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.753Z', p.location, 98, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA9629';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.637Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO8702';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.049Z', p.location, 29, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT8434';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.883Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP3343';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.399Z', p.location, 74, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH6047';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:12.668Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM0986';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.783Z', p.location, 61, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM5066';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.674Z', p.location, 82, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP2741';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.479Z', p.location, 29, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK8331';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.768Z', p.location, 14, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT3983';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.361Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC8896';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.253Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB5394';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.267Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB5987';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.046Z', p.location, 63, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM5528';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.883Z', p.location, 55, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM7518';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.076Z', p.location, 30, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX1911';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.697Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA9380';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.979Z', p.location, 100, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK7319';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.409Z', p.location, 92, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT7902';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.709Z', p.location, 9, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT0195';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.544Z', p.location, 61, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA5183';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.271Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE5606';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.545Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC1849';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.026Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM9710';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.869Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE0257';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.277Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM2551';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.929Z', p.location, 27, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB2337';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.196Z', p.location, 0, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH4277';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.173Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM5603';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.730Z', p.location, 86, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM4562';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.217Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO3465';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.466Z', p.location, 88, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB2568';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.967Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP5215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.558Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM8269';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.611Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX3819';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.115Z', p.location, 13, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK2690';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.916Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX3746';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.885Z', p.location, 65, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA8507';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:50.043Z', p.location, 62, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH4084';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.599Z', p.location, 46, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC5584';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.206Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC5393';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.460Z', p.location, 45, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH6657';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.615Z', p.location, 24, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA3228';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.220Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA2045';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:38.738Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA0079';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.188Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH1204';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.212Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB9749';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.680Z', p.location, 56, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM8406';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.138Z', p.location, 13, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT0952';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.473Z', p.location, 15, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC9162';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.699Z', p.location, 79, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP5829';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:35.988Z', p.location, 87, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA0977';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.454Z', p.location, 97, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH1402';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.147Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM3216';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.937Z', p.location, 33, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM7581';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.244Z', p.location, 8, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX5292';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.744Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT2723';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:00.884Z', p.location, 34, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK9900';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.688Z', p.location, 2, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT5755';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.922Z', p.location, 45, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB9166';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.662Z', p.location, 61, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB9470';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.792Z', p.location, 84, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK3996';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.303Z', p.location, 18, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC8806';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.636Z', p.location, 29, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK7427';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.819Z', p.location, 86, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT9437';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.067Z', p.location, 42, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK3942';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.918Z', p.location, 76, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX0455';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.975Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA5499';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.981Z', p.location, 38, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM0643';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.090Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB3899';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.206Z', p.location, 55, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH1162';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.856Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME0630';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.092Z', p.location, 27, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE2048';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.139Z', p.location, 30, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE2122';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.388Z', p.location, 96, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK5673';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.419Z', p.location, 2, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC4935';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.397Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM6621';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.348Z', p.location, 8, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP4996';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.121Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX2086';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.332Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE0861';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.997Z', p.location, 67, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP7921';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.993Z', p.location, 40, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA7306';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.256Z', p.location, 17, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX5958';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.254Z', p.location, 6, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA2625';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.488Z', p.location, 38, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC5265';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.984Z', p.location, 98, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB5019';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.831Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO0908';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.872Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT8965';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.761Z', p.location, 37, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC5520';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.123Z', p.location, 22, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC3137';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.458Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP7621';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.366Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM4275';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.076Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE1825';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.403Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP2721';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.452Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH9313';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.584Z', p.location, 25, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK5054';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.694Z', p.location, 75, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX0083';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.665Z', p.location, 38, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB7821';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.100Z', p.location, 67, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME6735';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.797Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE7823';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.653Z', p.location, 93, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA0236';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.002Z', p.location, 24, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM2281';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.254Z', p.location, 84, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP5290';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.994Z', p.location, 99, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO5345';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.836Z', p.location, 5, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA5167';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.795Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK7492';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.280Z', p.location, 78, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK8738';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.944Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP6298';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.566Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH2591';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.500Z', p.location, 45, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB4719';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.052Z', p.location, 45, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP5109';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.036Z', p.location, 81, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK4722';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.904Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE0538';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.463Z', p.location, 81, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP1746';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.879Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE1574';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.661Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX9088';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.185Z', p.location, 94, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC4636';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.923Z', p.location, 40, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE7174';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.165Z', p.location, 90, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA7752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.545Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM4864';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.842Z', p.location, 48, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK8504';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.367Z', p.location, 58, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP5514';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.698Z', p.location, 55, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MK8391';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.741Z', p.location, 95, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP2733';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.249Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA3148';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.080Z', p.location, 32, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC9951';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.252Z', p.location, 3, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO3334';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.192Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB4597';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.689Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC1945';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.237Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO9743';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.580Z', p.location, 4, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO5896';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.555Z', p.location, 27, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE9752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.579Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK4722';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.213Z', p.location, 60, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH3662';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.726Z', p.location, 38, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE7976';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.406Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB5026';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.307Z', p.location, 46, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE7515';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.018Z', p.location, 64, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP5976';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.568Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH5271';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.673Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO5439';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.158Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT8920';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.402Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM3042';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.886Z', p.location, 33, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK7865';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.062Z', p.location, 89, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK0613';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.571Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP7769';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.282Z', p.location, 25, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT6157';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.398Z', p.location, 49, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP2978';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.004Z', p.location, 32, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB0169';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.319Z', p.location, 81, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE3262';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.586Z', p.location, 21, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB0872';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.221Z', p.location, 26, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE4734';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.893Z', p.location, 96, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA2610';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.790Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO0561';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.092Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP2432';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.748Z', p.location, 73, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH8081';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.876Z', p.location, 9, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP4891';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.019Z', p.location, 74, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM4547';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.568Z', p.location, 92, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH9085';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.094Z', p.location, 15, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK3430';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.676Z', p.location, 27, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC1944';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.339Z', p.location, 84, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA9258';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.840Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC1178';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.876Z', p.location, 81, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK9272';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.033Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP8542';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.343Z', p.location, 49, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK3541';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.614Z', p.location, 44, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH4107';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.687Z', p.location, 63, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM4212';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.401Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH6205';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.441Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP9637';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.142Z', p.location, 65, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA4889';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.240Z', p.location, 98, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM1226';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.562Z', p.location, 88, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB8355';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.918Z', p.location, 77, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM3125';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.396Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM5268';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.036Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX3769';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:55.728Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT0251';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.966Z', p.location, 51, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT0065';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.974Z', p.location, 100, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO8331';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.088Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX6177';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.656Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB1174';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.271Z', p.location, 0, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE3104';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.570Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX7074';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:42.381Z', p.location, 44, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX9895';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.678Z', p.location, 48, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM7749';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.939Z', p.location, 41, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT7150';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.014Z', p.location, 96, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO6909';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.778Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH2741';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.498Z', p.location, 22, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA2458';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.935Z', p.location, 4, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT0433';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.469Z', p.location, 97, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC9451';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.646Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO5871';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.140Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP4996';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.402Z', p.location, 10, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX3541';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.863Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP9729';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.163Z', p.location, 7, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE8331';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.416Z', p.location, 41, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO8625';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.289Z', p.location, 27, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH6146';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.629Z', p.location, 42, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM5373';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.721Z', p.location, 100, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE4727';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.527Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO7985';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:20.865Z', p.location, 28, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC2554';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.831Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK8276';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.776Z', p.location, 28, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP2085';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.426Z', p.location, 78, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB5463';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.218Z', p.location, 67, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB1784';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.770Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK0355';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.842Z', p.location, 24, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH7819';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.903Z', p.location, 76, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO5595';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.331Z', p.location, 83, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP2520';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.943Z', p.location, 79, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM7407';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.564Z', p.location, 51, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO0286';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.651Z', p.location, 80, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC3129';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:24.684Z', p.location, 86, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB8302';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.284Z', p.location, 57, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM6136';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.879Z', p.location, 31, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB5327';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.593Z', p.location, 10, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC7127';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.247Z', p.location, 20, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX4449';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.392Z', p.location, 18, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP2764';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.766Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK2052';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.004Z', p.location, 8, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC5056';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.305Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX2276';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.013Z', p.location, 47, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK6639';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.062Z', p.location, 6, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE6220';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.859Z', p.location, 16, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT8756';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:20.518Z', p.location, 36, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM1704';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.889Z', p.location, 86, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT9384';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.760Z', p.location, 17, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH3336';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.911Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK7604';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.510Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP5175';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.680Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB3481';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.565Z', p.location, 72, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE1693';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.248Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA5269';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.428Z', p.location, 61, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK4030';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.264Z', p.location, 64, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK7632';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.116Z', p.location, 16, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX0515';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.403Z', p.location, 47, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK6710';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.312Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX0042';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.439Z', p.location, 22, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX5358';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.555Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX3171';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.872Z', p.location, 21, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB3559';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.931Z', p.location, 70, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT3263';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.849Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB5803';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:27.677Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK9737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.395Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH3434';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.151Z', p.location, 44, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX2188';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.692Z', p.location, 73, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TO8070';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.099Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB6867';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.491Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO3001';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.386Z', p.location, 33, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP9859';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.417Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH1999';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.344Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK1131';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.437Z', p.location, 2, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM7439';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.195Z', p.location, 82, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA4857';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.315Z', p.location, 3, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB5861';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.837Z', p.location, 87, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP8863';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:15.516Z', p.location, 19, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX4918';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.240Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT5306';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.387Z', p.location, 35, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO9533';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.262Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE8475';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.137Z', p.location, 63, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT3649';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.435Z', p.location, 9, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH9725';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.043Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT0315';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.949Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT7872';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.491Z', p.location, 20, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB3104';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.613Z', p.location, 48, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC3374';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.043Z', p.location, 22, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC7043';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.832Z', p.location, 10, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC4242';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.365Z', p.location, 39, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP0855';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.640Z', p.location, 69, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC6973';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.317Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM1076';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.710Z', p.location, 82, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX8932';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.252Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH8719';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:14.351Z', p.location, 92, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP0173';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.986Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK0966';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.236Z', p.location, 33, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EE2584';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.419Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA1344';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.697Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA0580';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.689Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX6522';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.985Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC7668';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.014Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC8033';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.423Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO2759';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.726Z', p.location, 59, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE3812';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.730Z', p.location, 38, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT1013';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.088Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO6028';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.487Z', p.location, 16, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB7295';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.444Z', p.location, 59, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA7320';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.308Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM5855';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:07.636Z', p.location, 75, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE1625';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.314Z', p.location, 30, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE6622';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.483Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO7200';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.144Z', p.location, 71, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB1346';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.279Z', p.location, 40, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX6064';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.535Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT8555';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.019Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX8952';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.103Z', p.location, 31, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH7752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.066Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC7752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.148Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP1586';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.462Z', p.location, 58, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP2019';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.933Z', p.location, 98, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT3121';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.155Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO1534';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.405Z', p.location, 49, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK8103';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.609Z', p.location, 34, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM4927';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.788Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE2677';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.260Z', p.location, 25, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX8645';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.413Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA5685';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.612Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT2950';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.071Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT6973';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.783Z', p.location, 69, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX3660';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.541Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM5922';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.013Z', p.location, 62, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB3954';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.718Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO4339';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.462Z', p.location, 0, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA9572';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.623Z', p.location, 83, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC7287';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.802Z', p.location, 48, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH6810';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.683Z', p.location, 8, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX5670';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.820Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK1195';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.659Z', p.location, 10, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC7336';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.432Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE9572';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.202Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX5826';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.916Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH8394';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.135Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA5048';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.179Z', p.location, 22, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH6034';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.833Z', p.location, 6, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP5057';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.351Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT8324';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:37.986Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE1966';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.447Z', p.location, 56, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB9445';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.698Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA8929';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.131Z', p.location, 68, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB6184';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.840Z', p.location, 21, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB3978';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.026Z', p.location, 85, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP8152';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.467Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC3677';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.852Z', p.location, 14, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP8171';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.800Z', p.location, 27, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH3285';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:12.764Z', p.location, 91, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB5576';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:11.559Z', p.location, 10, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP5441';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.716Z', p.location, 47, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB7617';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.391Z', p.location, 33, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH7817';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.365Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA5103';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.548Z', p.location, 10, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT8737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.243Z', p.location, 15, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX9180';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.668Z', p.location, 87, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX9104';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.902Z', p.location, 43, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA8022';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.262Z', p.location, 95, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO0124';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.616Z', p.location, 18, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH3556';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.570Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE5593';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.846Z', p.location, 41, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK9391';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.081Z', p.location, 72, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX9577';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.177Z', p.location, 30, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH3720';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.348Z', p.location, 29, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX6441';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.056Z', p.location, 26, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AP1196';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.173Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT2878';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.844Z', p.location, 1, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK9620';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.224Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH7075';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.298Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA0891';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.079Z', p.location, 84, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP3628';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.596Z', p.location, 35, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP7887';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.724Z', p.location, 27, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO5949';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.295Z', p.location, 87, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM5836';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.749Z', p.location, 74, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB4756';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.224Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA1052';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:41.989Z', p.location, 95, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO4615';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.293Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT7561';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.417Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX8814';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.127Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC3782';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.299Z', p.location, 12, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM6012';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:07.724Z', p.location, 43, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC1934';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.964Z', p.location, 52, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM2962';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.038Z', p.location, 14, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE0687';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.655Z', p.location, 18, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP1334';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.945Z', p.location, 40, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP6351';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.159Z', p.location, 37, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO5282';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.816Z', p.location, 99, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM4343';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.043Z', p.location, 46, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK8200';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.303Z', p.location, 20, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM0279';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.409Z', p.location, 48, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH0415';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.928Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MC4732';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.373Z', p.location, 100, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC7515';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.293Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX0232';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:46.846Z', p.location, 47, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA2463';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:36.618Z', p.location, 79, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH1827';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.472Z', p.location, 89, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OK8716';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:28.664Z', p.location, 7, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HX3306';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.406Z', p.location, 86, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH2966';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.051Z', p.location, 28, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP8250';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:05.392Z', p.location, 72, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP1172';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:25.357Z', p.location, 73, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC4452';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.637Z', p.location, 10, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA3559';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.613Z', p.location, 21, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC3881';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.548Z', p.location, 69, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT7862';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.450Z', p.location, 33, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA1247';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.325Z', p.location, 50, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA7067';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.757Z', p.location, 49, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO4871';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.612Z', p.location, 71, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT6085';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.162Z', p.location, 31, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM1215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.317Z', p.location, 14, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM6970';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.665Z', p.location, 52, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB3216';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.356Z', p.location, 68, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH8725';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.871Z', p.location, 43, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CP0169';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:19.356Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB8339';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.517Z', p.location, 40, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK6881';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.329Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA0127';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.927Z', p.location, 33, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE8958';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.762Z', p.location, 4, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB9535';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:58.513Z', p.location, 88, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB1597';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.736Z', p.location, 53, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TX2607';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.167Z', p.location, 31, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA4466';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.536Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA7972';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:49.069Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP6963';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.666Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX3445';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:38.029Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO1292';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.317Z', p.location, 76, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA9117';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.805Z', p.location, 31, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX5240';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.471Z', p.location, 22, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE2797';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.257Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM7130';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:00.512Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM5010';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.566Z', p.location, 46, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE3186';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.042Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM0303';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.080Z', p.location, 73, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP8143';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.093Z', p.location, 80, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA0022';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.309Z', p.location, 84, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX0603';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.528Z', p.location, 41, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE8033';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.861Z', p.location, 19, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK3859';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:32.001Z', p.location, 44, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC5054';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:11.317Z', p.location, 96, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB7514';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.715Z', p.location, 25, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO1011';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.837Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK8212';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:39.253Z', p.location, 53, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX9183';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.632Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE5178';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.534Z', p.location, 74, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK0364';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.999Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX4721';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.723Z', p.location, 21, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB3652';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.176Z', p.location, 9, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM9743';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.130Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX2611';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:00.128Z', p.location, 14, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX9768';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.079Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA2056';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.200Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP6945';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:09.624Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE7995';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.197Z', p.location, 59, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB9760';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.236Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX0905';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:10.490Z', p.location, 90, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA6261';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.978Z', p.location, 4, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA9177';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.993Z', p.location, 71, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX9386';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.824Z', p.location, 30, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KK6024';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.272Z', p.location, 94, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT7939';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:52.571Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC5074';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.492Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB6835';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.389Z', p.location, 20, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP0489';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.243Z', p.location, 81, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET9027';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.271Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX6733';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.811Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PC9126';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.675Z', p.location, 66, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE0284';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.891Z', p.location, 21, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB0951';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.680Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA1551';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.618Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT2909';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:01.540Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB9475';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:51.866Z', p.location, 27, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX0514';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.052Z', p.location, 58, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE2780';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.215Z', p.location, 60, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA8868';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.650Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE6221';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.188Z', p.location, 14, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE3901';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.963Z', p.location, 10, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX1445';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.904Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM4153';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.281Z', p.location, 40, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP8544';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.904Z', p.location, 2, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT3986';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.488Z', p.location, 19, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP4477';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:53.980Z', p.location, 63, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH2032';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.271Z', p.location, 76, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM0731';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:18.702Z', p.location, 46, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH5142';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:03.729Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM2604';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.607Z', p.location, 21, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE7575';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.949Z', p.location, 61, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BM9737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:33.225Z', p.location, 46, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP7557';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.628Z', p.location, 4, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC0279';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.360Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MA7527';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.294Z', p.location, 49, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB2806';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.901Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM2019';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.597Z', p.location, 0, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK8026';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:06.014Z', p.location, 88, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA6402';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.513Z', p.location, 13, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM4268';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.798Z', p.location, 29, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM1825';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.046Z', p.location, 65, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK1871';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.554Z', p.location, 32, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA2564';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.565Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP3251';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:25.988Z', p.location, 6, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK9741';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:19.723Z', p.location, 5, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH2786';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.734Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA3851';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:23.240Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KB6137';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.929Z', p.location, 41, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE9877';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:29.662Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA7552';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.606Z', p.location, 10, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM2617';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:35.166Z', p.location, 72, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT4587';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.645Z', p.location, 99, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HM8781';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.333Z', p.location, 74, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO2509';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.409Z', p.location, 40, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB5409';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.007Z', p.location, 7, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE3597';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.075Z', p.location, 91, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH3222';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:02.470Z', p.location, 50, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT0426';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.400Z', p.location, 38, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP7942';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.662Z', p.location, 51, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PE7809';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.903Z', p.location, 38, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH9366';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.681Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH5544';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:27.816Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE2970';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:56.117Z', p.location, 18, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AO9903';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.877Z', p.location, 28, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CT0785';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:00.725Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO8721';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:26.545Z', p.location, 29, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT6681';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.579Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP5749';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.277Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT1354';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.370Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA8547';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:24.854Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM6898';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:44.673Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK4381';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.175Z', p.location, 51, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC0059';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.943Z', p.location, 71, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XC4286';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.676Z', p.location, 65, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH2830';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.730Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XP9298';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:45.102Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH1481';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.497Z', p.location, 6, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA0477';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.382Z', p.location, 78, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB2876';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.338Z', p.location, 83, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH7383';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.589Z', p.location, 48, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP8912';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:30.015Z', p.location, 7, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET1544';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.234Z', p.location, 79, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE2424';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:58.521Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM5691';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:30.474Z', p.location, 32, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX9042';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.070Z', p.location, 72, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT1203';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.885Z', p.location, 84, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO1952';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:15.763Z', p.location, 77, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH2555';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:29.464Z', p.location, 37, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP1157';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:55.712Z', p.location, 74, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM8178';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.206Z', p.location, 0, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA8125';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:57.467Z', p.location, 31, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC6588';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.884Z', p.location, 10, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OP7931';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:47.042Z', p.location, 98, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT1382';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.497Z', p.location, 47, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE5273';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.870Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP9215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.823Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM4423';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.457Z', p.location, 49, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC7940';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.041Z', p.location, 49, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET7820';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.906Z', p.location, 40, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB9282';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.090Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH5792';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:54.231Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB3339';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.942Z', p.location, 90, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB1267';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.837Z', p.location, 19, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH3791';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.532Z', p.location, 92, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA8070';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.603Z', p.location, 48, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AA2191';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.311Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM6708';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:13.356Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH4859';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:43.993Z', p.location, 26, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE2697';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:22.409Z', p.location, 96, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM9549';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:53.409Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH3742';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.594Z', p.location, 25, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP5328';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.615Z', p.location, 36, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX4752';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:39.954Z', p.location, 93, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX3815';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:34.021Z', p.location, 40, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT5894';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.474Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT8618';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.522Z', p.location, 78, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX8115';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.708Z', p.location, 78, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE3981';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:49.312Z', p.location, 76, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TP9362';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:48.116Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE0274';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:22.937Z', p.location, 18, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE6953';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.382Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX5641';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.153Z', p.location, 16, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP1947';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.669Z', p.location, 9, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE5065';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.829Z', p.location, 96, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AC2049';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:08.870Z', p.location, 10, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA6619';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:51.247Z', p.location, 18, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC9680';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.993Z', p.location, 15, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO1737';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.988Z', p.location, 72, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH3808';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:25.458Z', p.location, 10, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC4168';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:44.812Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK8452';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.202Z', p.location, 73, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK5654';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:57.569Z', p.location, 27, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO2630';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.812Z', p.location, 84, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KO7489';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.641Z', p.location, 33, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MH4758';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:17.924Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HP0094';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:15.219Z', p.location, 99, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ET8393';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:42.589Z', p.location, 38, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH3514';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.858Z', p.location, 78, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE9122';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:36.731Z', p.location, 33, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB1842';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:05.682Z', p.location, 44, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE3002';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:13.514Z', p.location, 3, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA3750';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.334Z', p.location, 36, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM4235';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.782Z', p.location, 18, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO8387';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.374Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA1457';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.673Z', p.location, 8, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO4010';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:46.721Z', p.location, 43, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK1620';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:23.305Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO3685';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:32.620Z', p.location, 88, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA4392';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.902Z', p.location, 27, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PM4157';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.153Z', p.location, 16, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK8217';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.942Z', p.location, 80, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT3560';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:35.328Z', p.location, 29, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TM1733';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:17.872Z', p.location, 16, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM1246';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:55.286Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX4883';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:28.757Z', p.location, 68, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XK6738';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.936Z', p.location, 64, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OO4901';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.505Z', p.location, 36, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT1905';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.252Z', p.location, 14, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH7680';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.181Z', p.location, 14, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH7360';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.666Z', p.location, 67, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XA8381';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.372Z', p.location, 37, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO1372';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.833Z', p.location, 93, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KT8425';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.020Z', p.location, 93, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE4945';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:58.727Z', p.location, 77, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA8713';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.400Z', p.location, 26, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PX0889';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.576Z', p.location, 68, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB5696';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.561Z', p.location, 11, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB5975';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.090Z', p.location, 37, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO1420';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.576Z', p.location, 26, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OA6775';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:37.917Z', p.location, 67, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM3565';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:54.415Z', p.location, 64, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB5624';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.061Z', p.location, 27, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE1435';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:43.893Z', p.location, 86, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH2772';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.014Z', p.location, 20, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM6237';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.163Z', p.location, 70, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC6291';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:09.360Z', p.location, 57, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA9138';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.553Z', p.location, 53, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TB6604';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:02.583Z', p.location, 6, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TE3163';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:53.653Z', p.location, 69, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XX6151';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.615Z', p.location, 60, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB7288';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.952Z', p.location, 15, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE4016';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:20.559Z', p.location, 4, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AK3734';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.303Z', p.location, 13, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CA0967';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:24.365Z', p.location, 29, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT2506';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.667Z', p.location, 75, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK2901';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:37.570Z', p.location, 3, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EM2562';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.296Z', p.location, 65, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT1309';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.484Z', p.location, 86, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB6808';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.840Z', p.location, 27, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP5442';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:52.448Z', p.location, 66, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PT9544';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:33.060Z', p.location, 62, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EC5638';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:30.772Z', p.location, 29, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT5543';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.871Z', p.location, 54, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB2136';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.036Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM0487';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.153Z', p.location, 75, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PK7226';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.191Z', p.location, 52, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA8825';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:11.628Z', p.location, 37, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XO2955';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:34.902Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BP8951';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:31.404Z', p.location, 41, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME4584';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:40.852Z', p.location, 59, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB3900';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.356Z', p.location, 95, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PP6123';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:12.093Z', p.location, 30, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH8993';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.366Z', p.location, 33, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK7565';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:04.095Z', p.location, 25, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HO7138';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.172Z', p.location, 94, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TA6543';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:01.542Z', p.location, 44, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP9250';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:46.985Z', p.location, 62, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BB9194';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:10.221Z', p.location, 25, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HH4996';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.174Z', p.location, 84, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HK4128';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.832Z', p.location, 81, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX1469';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:38.395Z', p.location, 79, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT1222';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:31.398Z', p.location, 18, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH7511';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.908Z', p.location, 35, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OC4655';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:14.364Z', p.location, 11, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB9638';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:03.899Z', p.location, 60, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB3099';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.298Z', p.location, 3, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO4215';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:06.249Z', p.location, 50, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AX2390';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:18.652Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT1734';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.765Z', p.location, 22, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KM9568';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:57.322Z', p.location, 81, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM9903';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.534Z', p.location, 16, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EH9871';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:34.169Z', p.location, 49, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE4751';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:41.045Z', p.location, 45, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OM3397';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.841Z', p.location, 36, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT3890';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:00.415Z', p.location, 1, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH0484';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:03.667Z', p.location, 17, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT3155';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.710Z', p.location, 50, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MX0169';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:16.967Z', p.location, 70, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XB1023';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:52.576Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PO0450';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:00.150Z', p.location, 17, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AT8347';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:32.789Z', p.location, 71, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CK2116';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:52:59.843Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AB0191';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:59.950Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EO3503';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:06.049Z', p.location, 34, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC1628';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:21.562Z', p.location, 82, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OT7408';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:27.367Z', p.location, 41, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BA9414';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:28.924Z', p.location, 2, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE8533';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:16.983Z', p.location, 45, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH6826';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:51.294Z', p.location, 74, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT1646';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.984Z', p.location, 45, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OX5612';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.226Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO9499';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:48.817Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CE1845';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:04.181Z', p.location, 13, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH9604';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:19.527Z', p.location, 89, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC5270';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.129Z', p.location, 84, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BC5919';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:59.093Z', p.location, 2, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KE6086';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:01.217Z', p.location, 81, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BE1758';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:47.035Z', p.location, 54, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HA5026';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.869Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH1791';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.462Z', p.location, 52, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EX3501';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.299Z', p.location, 39, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE1541';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.056Z', p.location, 44, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XT1525';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:40.757Z', p.location, 56, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CX3060';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:08.912Z', p.location, 74, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB4162';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:08.218Z', p.location, 40, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CH0017';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:43.408Z', p.location, 99, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TT7714';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:09.508Z', p.location, 63, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KP2320';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.309Z', p.location, 48, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CB1132';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:20.738Z', p.location, 21, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XH4845';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:13.122Z', p.location, 97, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM6601';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.141Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PB7480';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:42.987Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OH1537';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:04.091Z', p.location, 15, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB6030';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:21.239Z', p.location, 27, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TK2453';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.908Z', p.location, 3, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BK8876';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:15.866Z', p.location, 46, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PH7377';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:18.783Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TC5712';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:36.051Z', p.location, 53, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'ME9637';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:39.249Z', p.location, 7, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT6850';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:16.630Z', p.location, 85, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AM0201';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:28.118Z', p.location, 90, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HB9706';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:02.376Z', p.location, 73, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MO9108';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:54.502Z', p.location, 12, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HC9014';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.028Z', p.location, 39, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HT6650';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:50.420Z', p.location, 69, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BX8555';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.884Z', p.location, 66, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EK6212';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.307Z', p.location, 90, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KC2826';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:05.582Z', p.location, 69, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'HE0329';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:56.403Z', p.location, 24, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'TH0585';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:26.794Z', p.location, 78, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KA8063';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:07.169Z', p.location, 79, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM4815';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:45.622Z', p.location, 82, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CM8396';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:47.044Z', p.location, 20, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MT6654';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:22.148Z', p.location, 91, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EA3442';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:21.806Z', p.location, 92, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XM7511';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:40.825Z', p.location, 20, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AH2457';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:44.193Z', p.location, 94, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KX2834';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:29.429Z', p.location, 56, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EB4162';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:15.808Z', p.location, 28, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH2143';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:49.526Z', p.location, 0, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'KH1290';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:33.543Z', p.location, 100, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'AE4801';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:48.548Z', p.location, 83, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'EP7428';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.834Z', p.location, 42, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CO6293';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:20.943Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MM6418';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:10.168Z', p.location, 72, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OE4714';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:23.009Z', p.location, 12, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BO1491';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:14.045Z', p.location, 58, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'PA3553';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:50.850Z', p.location, 76, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'XE6875';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:53:58.370Z', p.location, 43, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BT0523';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:26.357Z', p.location, 83, 'unlocked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'OB8183';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:45.657Z', p.location, 17, 'locked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'BH2209';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:54:41.609Z', p.location, 15, 'unlocked', 'off'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'MP8503';
INSERT INTO pings (scooter_id, date, location, battery_level, lock_state, lights_state)
SELECT s.id, '2023-04-30T11:55:56.321Z', p.location, 97, 'locked', 'on'
FROM (SELECT id, number, ROW_NUMBER() OVER (ORDER BY random()) rn FROM scooters) s
JOIN (SELECT location, ROW_NUMBER() OVER (ORDER BY random()) rn FROM parkings) p USING (rn)
WHERE s.number = 'CC1965';
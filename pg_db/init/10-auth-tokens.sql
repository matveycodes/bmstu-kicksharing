INSERT INTO auth_tokens (user_id, value, date_expired)
SELECT id, 'CUSTOMER_TOKEN', '2038-01-01T00:00:00' FROM users WHERE phone = '79999999991';
INSERT INTO auth_tokens (user_id, value, date_expired)
SELECT id, 'TECHNICIAN_TOKEN', '2038-01-01T00:00:00' FROM users WHERE phone = '79999999992';
INSERT INTO auth_tokens (user_id, value, date_expired)
SELECT id, 'ADMIN_TOKEN', '2038-01-01T00:00:00' FROM users WHERE phone = '79999999993';
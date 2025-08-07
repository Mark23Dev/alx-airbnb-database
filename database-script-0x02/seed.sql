-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (uuid_generate_v4(), 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '0712345678', 'guest'),
  (uuid_generate_v4(), 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw_2', '0723456789', 'host'),
  (uuid_generate_v4(), 'Carol', 'Admin', 'admin@example.com', 'hashed_pw_3', NULL, 'admin');

-- Insert Properties (hosted by Bob)
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
SELECT uuid_generate_v4(), user_id, name, description, location, pricepernight
FROM (
  SELECT user_id FROM users WHERE email = 'bob@example.com'
) AS host, (
  VALUES
    ('Seaside Cottage', 'A cozy cottage by the ocean.', 'Mombasa, Kenya', 5000.00),
    ('Mountain Retreat', 'A cabin in the forested hills.', 'Nyeri, Kenya', 7500.00)
) AS p(name, description, location, pricepernight);

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
SELECT uuid_generate_v4(), p.property_id, u.user_id, start_date, end_date, total_price, status
FROM 
  (SELECT user_id FROM users WHERE email = 'alice@example.com') u,
  (SELECT property_id FROM properties) p,
  (VALUES 
    ('2025-08-10', '2025-08-14', 20000.00, 'confirmed'),
    ('2025-09-01', '2025-09-05', 30000.00, 'pending')
  ) AS b(start_date, end_date, total_price, status)
LIMIT 2;

-- Insert Payment
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
SELECT uuid_generate_v4(), booking_id, total_price, 'credit_card'
FROM bookings
WHERE status = 'confirmed';

-- Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
SELECT uuid_generate_v4(), p.property_id, u.user_id, rating, comment
FROM 
  (SELECT user_id FROM users WHERE email = 'alice@example.com') u,
  (SELECT property_id FROM properties) p,
  (VALUES
    (5, 'Amazing view and very clean!'),
    (4, 'Quiet and peaceful stay.')
  ) AS r(rating, comment)
LIMIT 2;

-- Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
SELECT uuid_generate_v4(), s.user_id, r.user_id, msg
FROM 
  (SELECT user_id FROM users WHERE email = 'alice@example.com') s,
  (SELECT user_id FROM users WHERE email = 'bob@example.com') r,
  (VALUES
    ('Hi Bob, is the cottage available next week?'),
    ('Hi Alice, yes it is! Looking forward to hosting you.')
  ) AS m(msg)
LIMIT 2;

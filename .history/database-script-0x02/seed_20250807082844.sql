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

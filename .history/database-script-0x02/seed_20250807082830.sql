-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (uuid_generate_v4(), 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '0712345678', 'guest'),
  (uuid_generate_v4(), 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw_2', '0723456789', 'host'),
  (uuid_generate_v4(), 'Carol', 'Admin', 'admin@example.com', 'hashed_pw_3', NULL, 'admin');

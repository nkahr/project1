DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS merchants;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tags;

CREATE TABLE merchants (
  id SERIAL8 primary key,
  name VARCHAR(255)
);

CREATE TABLE users (
  id SERIAL8 primary key,
  username VARCHAR(255),
  monthly_limit DECIMAL(16,2),
  funds DECIMAL(16,2)
);

CREATE TABLE tags (
  id SERIAL8 primary key,
  label VARCHAR(255)
  );

CREATE TABLE transactions (
  id SERIAL8,
  amount DECIMAL(16,2),
  time VARCHAR(255),
  note VARCHAR(255),
  merchant_id INT8 references merchants(id) ON DELETE CASCADE,
  user_id INT8 references users(id) ON DELETE CASCADE, 
  tag_id INT8 references tags(id) ON DELETE CASCADE
);
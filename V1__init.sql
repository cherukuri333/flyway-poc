-- V1__init.sql

CREATE TABLE sai (
  id SERIAL PRIMARY KEY,
  address VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT now()
);

-- Insert initial data
INSERT INTO sai (address, email) VALUES
  ('Hyderabad', 'abc@gmail.com'),
  ('Mumbai', 'dfg@gmail.com');

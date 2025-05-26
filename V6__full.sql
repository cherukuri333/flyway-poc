-- Create `vernova` table
CREATE TABLE IF NOT EXISTS saiteja (
    id SERIAL PRIMARY KEY,
    org VARCHAR(50) NOT NULL,
    project_name VARCHAR(50) NOT NULL,
    members TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

-- Insert initial data
INSERT INTO saiteja (org, project_name, members) VALUES
    ('GE', 'Flyway', 'sai, kamal, Prakash');

-- Update members if needed
UPDATE vernova
SET members = 'sai, kamal, Prakash, Raj'
WHERE project_name = 'Flyway';

-- Always ensure table exists
CREATE TABLE IF NOT EXISTS vernova (
    id SERIAL PRIMARY KEY,
    org VARCHAR(50) NOT NULL,
    project_name VARCHAR(50) NOT NULL,
    members TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

-- Insert or update data dynamically
INSERT INTO vernova (org, project_name, members)
VALUES ('GE', 'Flyway', 'sai, kamal, Prakash')
ON CONFLICT (project_name)
DO UPDATE SET members = EXCLUDED.members;

-- Commented out deletion statement
-- -- If deletion is needed, uncomment this
-- -- DROP TABLE IF EXISTS vernova;


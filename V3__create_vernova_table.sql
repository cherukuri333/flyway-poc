-- Create `vernova` table for project information
CREATE TABLE vernova (
    id SERIAL PRIMARY KEY,
    org VARCHAR(50) NOT NULL,
    project_name VARCHAR(50) NOT NULL,
    members TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

-- Insert initial project data
INSERT INTO vernova (org, project_name, members) VALUES
    ('GE', 'Flyway', 'sai, kamal, Prakash');

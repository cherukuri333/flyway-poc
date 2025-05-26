-- Create `saiteja` table for project information
CREATE TABLE IF NOT EXISTS saiteja (
    id SERIAL PRIMARY KEY,
    project VARCHAR(50) NOT NULL,
    org VARCHAR(50) NOT NULL,
    members TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

-- Insert initial project data
INSERT INTO saiteja (project, org, members) VALUES
    ('Flyway', 'GE', 'Sai, Praksh, Kamal');

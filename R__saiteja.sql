-- Modify `saiteja` table to add new columns (if not already present)
ALTER TABLE saiteja ADD COLUMN IF NOT EXISTS mobile_number VARCHAR(20) DEFAULT 'no contact numbers';
ALTER TABLE saiteja ADD COLUMN IF NOT EXISTS signature TEXT DEFAULT 'no signatures';

-- Update mobile numbers dynamically
UPDATE saiteja 
SET mobile_number = '1234567890'
WHERE org = 'GE' AND project = 'Flyway';

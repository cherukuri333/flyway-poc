-- Modify `saiteja` table to add new columns
ALTER TABLE saiteja ADD COLUMN mobile_number VARCHAR(20) DEFAULT 'no contact numbers';
ALTER TABLE saiteja ADD COLUMN signature TEXT DEFAULT 'no signatures';

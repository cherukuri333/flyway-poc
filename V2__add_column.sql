-- V2__add_column.sql

ALTER TABLE users
ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

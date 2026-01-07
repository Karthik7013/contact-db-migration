-- migrate:up
ALTER TABLE contacts
ADD COLUMN user_id INTEGER REFERENCES users (id) ON DELETE CASCADE;

-- migrate:down
ALTER TABLE contacts DROP COLUMN user_id;
-- migrate:up
ALTER TABLE contact_management.contacts
ADD COLUMN is_favourite BOOLEAN DEFAULT false,
ADD COLUMN is_blocked BOOLEAN DEFAULT false;

-- migrate:down
ALTER TABLE contact_management.contacts
DROP COLUMN is_favourite,
DROP COLUMN is_blocked;
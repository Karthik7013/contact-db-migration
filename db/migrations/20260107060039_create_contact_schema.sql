-- migrate:up
CREATE SCHEMA contact_management;

CREATE TABLE contact_management.contacts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES user_management.users (id) ON DELETE CASCADE,
    first_name VARCHAR(255),
    middle_name VARCHAR(255),
    last_name VARCHAR(255),
    name_prefix VARCHAR(50),
    name_suffix VARCHAR(50),
    avatar_url VARCHAR(255),
    banner_url VARCHAR(255),
    nick_name VARCHAR(255),
    email JSONB,
    phone_number JSONB,
    imp_date JSONB,
    relation JSONB,
    website JSONB,
    address TEXT,
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON COLUMN contact_management.contacts.email IS '[{"home" : "example@gmail.com"}]';

COMMENT ON COLUMN contact_management.contacts.phone_number IS '[{"home" : "+91 7013140693"}]';

COMMENT ON COLUMN contact_management.contacts.imp_date IS '[{"Anniversary" : "dd-mm-yyyy"}]';

COMMENT ON COLUMN contact_management.contacts.relation IS '[{"father" : "Joe"}]';

COMMENT ON COLUMN contact_management.contacts.website IS '[{"company" : "www.example.com"}]';

-- migrate:down
DROP TABLE contact_management.contacts;

DROP SCHEMA contact_management;
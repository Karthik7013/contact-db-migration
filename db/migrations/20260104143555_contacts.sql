-- migrate:up
CREATE TABLE contacts (
    id SERIAL PRIMARY KEY,
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
    bio TEXT
);

COMMENT ON COLUMN contacts.email IS '[{"home" : "example@gmail.com"}]';
COMMENT ON COLUMN contacts.phone_number IS '[{"home" : "+91 7013140693"}]';
COMMENT ON COLUMN contacts.imp_date IS '[{"Anniversary" : "dd-mm-yyyy"}]';
COMMENT ON COLUMN contacts.relation IS '[{"father" : "Joe"}]';
COMMENT ON COLUMN contacts.website IS '[{"company" : "www.example.com"}]';

-- migrate:down
DROP TABLE contacts;
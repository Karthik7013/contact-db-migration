-- migrate:up
CREATE SCHEMA user_management;
CREATE TABLE user_management.users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    nick_name VARCHAR(255),
    primary_email VARCHAR(255) NOT NULL UNIQUE,
    recovery_email VARCHAR(255),
    primary_number VARCHAR(50),
    secondary_number VARCHAR(15),
    profile_url VARCHAR(255),
    address TEXT,
    is_email_verified BOOLEAN DEFAULT false,
    is_phone_number_verified BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status SMALLINT
);

-- migrate:down
DROP TABLE users;
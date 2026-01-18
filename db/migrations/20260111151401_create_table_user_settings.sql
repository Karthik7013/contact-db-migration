-- migrate:up
CREATE TABLE user_management.user_settings (
    user_id INTEGER PRIMARY KEY REFERENCES user_management.users (id) ON DELETE CASCADE,
    language VARCHAR(10) DEFAULT 'en',
    timezone VARCHAR(50) DEFAULT 'UTC',
    default_country_code VARCHAR(5),
    ui_preferences JSONB DEFAULT '{"theme": "system", "accent_color": "#6200ee", "view_mode": "list", "sort_by": "first_name"}'::jsonb,
    notification_preferences JSONB DEFAULT '{}'::jsonb,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- migrate:down
DROP TABLE user_management.user_settings;
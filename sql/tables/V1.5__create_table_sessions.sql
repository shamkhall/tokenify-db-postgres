CREATE TABLE IF NOT EXISTS auth.sessions
(
    session_id    SERIAL PRIMARY KEY,
    device_id     INTEGER NOT NULL REFERENCES auth.devices (device_id),
    user_id       INTEGER NOT NULL REFERENCES auth.users (user_id),
    refresh_token VARCHAR NOT NULL,
    ip_address    inet    NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

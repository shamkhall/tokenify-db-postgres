CREATE TABLE IF NOT EXISTS auth.devices
(
    device_id  SERIAL PRIMARY KEY,
    user_id    INTEGER NOT NULL REFERENCES auth.users (user_id),
    os         VARCHAR NOT NULL,
    os_major   VARCHAR NOT NULL,
    params     JSONB   NOT NULL            DEFAULT '{}'::jsonb,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

comment on column auth.devices.params is '{ browser: <value> , browser_major: <value> , imei: <value> }';

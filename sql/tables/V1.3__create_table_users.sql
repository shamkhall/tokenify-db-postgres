CREATE TABLE auth.users
(
    user_id      SERIAL PRIMARY KEY,
    username     VARCHAR UNIQUE NOT NULL,
    firstname    VARCHAR NOT NULL,
    surname      VARCHAR NOT NULL,
    password     VARCHAR NOT NULL,
    avatar       VARCHAR NOT NULL,
    role_id      INTEGER NOT NULL REFERENCES auth.roles (role_id),
    profile_data JSONB NOT NULL DEFAULT '{}'::jsonb,
    soft_deleted BOOLEAN                     DEFAULT FALSE,
    created_at   TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_at   TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW()
);

comment on column auth.users.profile_data is '{ pin: <value> , nfc_tag: <value> , birth_date: <value> }'

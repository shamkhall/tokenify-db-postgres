CREATE OR REPLACE FUNCTION auth.get_user_by_id(_user_id INTEGER)
    RETURNS TABLE
            (
                user_id       INTEGER,
                username      VARCHAR,
                firstname     VARCHAR,
                surname       VARCHAR,
                avatar        VARCHAR,
                role_id       INTEGER,
                created_at    TIMESTAMP WITHOUT TIME ZONE,
                updated_at    TIMESTAMP WITHOUT TIME ZONE
            )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY SELECT u.user_id,
                        u.username,
                        u.firstname,
                        u.surname,
                        u.avatar,
                        u.role_id,
                        u.created_at,
                        u.updated_at
                 FROM auth.users as u
                 WHERE u.user_id = _user_id
                   AND u.soft_deleted = false;
END;
$$;

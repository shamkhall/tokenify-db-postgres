CREATE OR REPLACE FUNCTION auth.authorize_user(_username VARCHAR)
    RETURNS TABLE
            (
                user_id      INTEGER,
                username     VARCHAR,
                firstname    VARCHAR,
                surname      VARCHAR,
                password     VARCHAR,
                avatar       VARCHAR,
                role_id      INTEGER,
                created_at   TIMESTAMP WITHOUT TIME ZONE,
                updated_at   TIMESTAMP WITHOUT TIME ZONE
            )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY SELECT u.user_id,
                        u.username,
                        u.firstname,
                        u.surname,
                        u.password,
                        u.avatar,
                        u.role_id,
                        u.created_at,
                        u.updated_at
                 FROM auth.users AS u
                 WHERE u.username = _username AND u.soft_deleted = false;
END
$$;

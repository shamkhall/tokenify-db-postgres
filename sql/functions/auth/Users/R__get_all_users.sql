CREATE OR REPLACE FUNCTION auth.get_users(_limit INTEGER, _offset INTEGER)
    RETURNS TABLE
            (
                user_id      INTEGER,
                username     VARCHAR,
                firstname    VARCHAR,
                surname      VARCHAR,
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
                        u.avatar,
                        u.role_id,
                        u.created_at,
                        u.updated_at

                 FROM auth.users u
                 WHERE u.soft_deleted = false
                 ORDER BY u.user_id
                 LIMIT _limit OFFSET _offset;
END;
$$;

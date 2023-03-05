DROP FUNCTION IF EXISTS auth.users_count();

CREATE OR REPLACE FUNCTION auth.users_count()
    RETURNS int AS
$func$
BEGIN
    RETURN (SELECT count(user_id)::int
            FROM auth.users);
END
$func$ LANGUAGE plpgsql;

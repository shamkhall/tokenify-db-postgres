CREATE OR REPLACE FUNCTION auth.get_roles()
    RETURNS TABLE
            (
                role_id    INTEGER,
                key        VARCHAR,
                name       VARCHAR,
                created_at TIMESTAMP WITHOUT TIME ZONE,
                updated_at TIMESTAMP WITHOUT TIME ZONE
            )
    LANGUAGE plpgsql
AS
$$
BEGIN

    RETURN QUERY SELECT r.role_id, r.key, r.name, r.created_at, r.updated_at FROM auth.roles r;

END ;
$$;

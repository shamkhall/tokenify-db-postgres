CREATE OR REPLACE PROCEDURE auth.set_refresh_token(_user_id INTEGER, _refresh_token VARCHAR)
    LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE auth.users
    SET refresh_token = _refresh_token
    WHERE user_id = _user_id;
END;
$$;

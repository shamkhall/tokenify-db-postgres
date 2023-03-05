CREATE OR REPLACE PROCEDURE auth.update_user_password(_user_id INTEGER, _new_password VARCHAR(255))
    LANGUAGE PLPGSQL
as
$$
BEGIN
    UPDATE auth.users SET password = _new_password WHERE user_id = _user_id;
    COMMIT;
END;
$$;

CREATE OR REPLACE PROCEDURE auth.update_user(_user_id INTEGER, _firstname VARCHAR, _surname VARCHAR, _role_id INTEGER)
    LANGUAGE PLPGSQL
as
$$
BEGIN
    UPDATE auth.users
    SET firstname = _firstname,
        surname   = _surname,
        role_id   = _role_id
    WHERE user_id = _user_id;
    COMMIT;
END;
$$;

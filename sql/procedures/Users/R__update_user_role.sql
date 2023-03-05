CREATE OR REPLACE PROCEDURE auth.update_user_role(IN _user_id integer, IN _role_id integer)
    LANGUAGE PLPGSQL
as
$$
BEGIN
    UPDATE auth.users SET role_id = _role_id WHERE user_id = _user_id;
END;
$$;

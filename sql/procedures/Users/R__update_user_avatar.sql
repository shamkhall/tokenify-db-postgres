CREATE OR REPLACE PROCEDURE auth.update_user_avatar(_user_id INTEGER, _user_avatar VARCHAR(255))
    LANGUAGE PLPGSQL
as
$$
BEGIN
    UPDATE auth.users SET avatar = _user_avatar WHERE user_id = _user_id;
    COMMIT;
END;
$$;

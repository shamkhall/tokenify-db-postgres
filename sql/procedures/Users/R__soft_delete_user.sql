CREATE OR REPLACE PROCEDURE auth.soft_delete_user(_user_id INTEGER)
    LANGUAGE PLPGSQL
AS
$$
BEGIN
    UPDATE auth.users
    SET soft_deleted = true
    WHERE user_id = _user_id;
    COMMIT;
END;
$$;

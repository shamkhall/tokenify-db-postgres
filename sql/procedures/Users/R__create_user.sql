CREATE OR REPLACE PROCEDURE auth.create_user(
    _username VARCHAR(255),
    _firstname VARCHAR(255),
    _surname VARCHAR(255),
    _password VARCHAR(255),
    _avatar VARCHAR(255),
    _role_id INTEGER
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO auth.users( username, firstname, surname, password, avatar, role_id)
    VALUES (_username, _firstname, _surname, _password, _avatar, _role_id);
    commit;
END
$$;

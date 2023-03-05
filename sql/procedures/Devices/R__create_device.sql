CREATE OR REPLACE PROCEDURE auth.add_device(
    _user_id INTEGER,
    _os VARCHAR,
    _os_major VARCHAR,
    _params JSONB,
    INOUT _device_id int DEFAULT NULL
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO auth.devices (user_id, os, os_major, params)
    VALUES (_user_id, _os, _os_major, _params)
    RETURNING device_id
        INTO _device_id;
END;
$$;

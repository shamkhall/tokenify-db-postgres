CREATE OR REPLACE PROCEDURE auth.create_session(
    _device_id INTEGER,
    _user_id INTEGER,
    _refresh_token VARCHAR,
    _ip_address inet,
    INOUT _session_id int DEFAULT NULL
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO auth.sessions (device_id, user_id, refresh_token, ip_address)
    VALUES (_device_id,
            _user_id,
            _refresh_token,
            _ip_address)
    RETURNING session_id
        INTO _session_id;
END;
$$;

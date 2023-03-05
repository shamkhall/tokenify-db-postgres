CREATE OR REPLACE FUNCTION auth.find_session(_user_id INTEGER, _token VARCHAR)
    RETURNS TABLE
            (
                session_id INTEGER,
                device_id  INTEGER,
                user_id    INTEGER,
                ip_address inet,
                created_at TIMESTAMP
            )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY SELECT s.session_id,
                        s.device_id,
                        s.user_id,
                        s.ip_address,
                        s.created_at
                 FROM auth.sessions as s
                 WHERE s.user_id = _user_id
                   AND s.refresh_token = _token
                   AND s.active = TRUE
                 ORDER BY session_id;
END;
$$;

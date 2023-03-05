CREATE OR REPLACE FUNCTION auth.get_session(_session_id INTEGER)
    RETURNS TABLE
            (
                user_id       INTEGER,
                device_id     INTEGER,
                refresh_token VARCHAR,
                ip_address    inet,
                created_at    TIMESTAMP
            )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY SELECT s.user_id,
                        s.device_id,
                        s.refresh_token,
                        s.ip_address,
                        s.created_at
                 FROM auth.sessions as s
                 WHERE s.session_id = _session_id
                   AND s.active = TRUE
                 ORDER BY session_id;
END;
$$;

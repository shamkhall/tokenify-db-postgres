CREATE OR REPLACE PROCEDURE auth.update_token_by_session_id(
    _token VARCHAR,
    _session_id INTEGER
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE auth.sessions
    SET refresh_token = _token
    WHERE session_id = _session_id;
    COMMIT;
END;
$$;

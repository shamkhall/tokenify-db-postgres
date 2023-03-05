CREATE OR REPLACE PROCEDURE auth.inactivate_session(
    _session_id INTEGER
)
    LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE auth.sessions
    SET active = false
    WHERE session_id = _session_id;
    COMMIT;
END;
$$;

CREATE OR REPLACE FUNCTION auth.get_device_by_user_id(_user_id INTEGER, _limit INTEGER, _offset INTEGER)
    RETURNS TABLE
            (
                device_id  INTEGER,
                os         VARCHAR,
                os_major   VARCHAR,
                params     JSONB,
                created_at TIMESTAMP
            )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY SELECT d.device_id,
                        d.os,
                        d.os_major,
                        d.params,
                        d.created_at
                 FROM auth.devices as d
                 WHERE user_id = _user_id
                 ORDER BY device_id
                 LIMIT _limit OFFSET _offset;
END;
$$;

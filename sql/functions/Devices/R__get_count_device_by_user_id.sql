CREATE FUNCTION auth.get_device_count(_user_id INTEGER)
    RETURNS int AS
$func$
BEGIN
    RETURN (SELECT count(d.device_id)::int
            FROM auth.devices as d
            WHERE d.user_id = _user_id);
END
$func$ LANGUAGE plpgsql;

CREATE FUNCTION auth.is_device_exists(_device_id INTEGER)
    RETURNS BOOLEAN
AS
$$
BEGIN
    RETURN EXISTS(
            SELECT device_id
            FROM auth.devices d
            WHERE d.device_id = _device_id
        );
END
$$ LANGUAGE plpgsql;

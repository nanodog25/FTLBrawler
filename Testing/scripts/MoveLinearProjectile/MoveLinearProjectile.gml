if (alarm_get(0) < 0)
{
	if (_isVertical)
	{
		y += _direction*_travelSpeed;
		if (abs(_xRelease-y) > _travelDistance)
			instance_destroy();
	}
	else
	{
		x += _direction*_travelSpeed;
		if (abs(_xRelease-x) > _travelDistance)
			instance_destroy();
	}
}
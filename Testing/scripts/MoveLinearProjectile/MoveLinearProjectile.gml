if (_isVertical)
{
	y += _travelSpeed * (_isUp ? -1 : 1);
	if (abs(_yRelease-y) > _travelDistance)
		instance_destroy();
}
else
{
	x += _direction*_travelSpeed;
	if (abs(_xRelease-x) > _travelDistance)
		instance_destroy();
}
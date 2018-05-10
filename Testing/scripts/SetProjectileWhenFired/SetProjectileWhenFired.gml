if (_hasOrigin)
{
	_direction = -_origin.image_xscale;
	image_xscale = _direction;
	_lane = _origin._lane;


	if (_isVertical)
	{
		_lane += _isUp ? -1 : 1;
		_xRelease = _origin.x;
		_yRelease = _yOffset + _origin.y;
		_initialLane = _lane;
		_lastCollisionY = _origin._targetGroundY
		_currentGroundY = _origin._currentGroundY;
	}
	else
	{
		_xRelease = _origin.x + _direction*_xOffset;
		_yRelease = _origin._targetGroundY + _yOffset + _origin.y - _origin._currentGroundY;
		_currentGroundY = _origin._currentGroundY;
	}
	
	x = _xRelease;
	y = _yRelease;
}
else
{
	_xRelease = x;
	_yRelease = y;
	_currentGroundY = 0;
}

depth = DepthModifier(_lane, "Projectile");

visible = true;
_released = true;
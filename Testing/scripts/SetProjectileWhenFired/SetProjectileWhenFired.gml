if (_hasOrigin)
{
	_direction = -_origin.image_xscale;
	_xRelease = _origin.x + _direction*_xOffset;
	_yRelease = _origin.y + _yOffset;
	_lane = _origin._lane;

	x = _xRelease;
	y = _yRelease;
}
else
{
	_xRelease = x;
	_yRelease = y;
}

depth = DepthModifier(_lane, "Projectile");

visible = true;
_released = true;
_initialLane = _lane;
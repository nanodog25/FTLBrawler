if (_hasOrigin)
{
	_direction = -_origin.image_xscale;
	image_xscale = _direction;
	_lane = _origin._lane;

	if (_isVertical)
	{
		var dir = _isUp ? -1 : 1;
		_xRelease = _origin.x;
		_yRelease = _origin._targetGroundY + _yOffset + _origin.y - _origin._currentGroundY + dir * global.LaneHalf;
		_currentGroundY = _origin._targetGroundY + dir * global.LaneHalf;
		_initialLane = _lane;
		depth = DepthModifier(_lane, _isUp ? "RearProjectile" : "FrontProjectile");
		
	}
	else
	{
		_xRelease = _origin.x + _direction*_xOffset;
		_yRelease = _origin._targetGroundY + _yOffset + _origin.y - _origin._currentGroundY;
		depth = DepthModifier(_lane, "Projectile");
	}
	
	x = _xRelease;
	y = _yRelease;
}
else
{
	_xRelease = x;
	_yRelease = y;
	_currentGroundY = 0;
	depth = DepthModifier(_lane, "Projectile");
}

visible = true;
_released = true;
_state = "released";
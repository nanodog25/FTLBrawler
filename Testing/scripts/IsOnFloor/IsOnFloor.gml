///@arg floor

var flr = argument0;

return flr != noone
	&& flr._lane == _lane
	&& flr._xLeft <= x
	&& flr._xRight >= x
	&& flr._y == _targetGroundY
	&& !(_isJumping || _isFalling || _currentGroundY != _targetGroundY);
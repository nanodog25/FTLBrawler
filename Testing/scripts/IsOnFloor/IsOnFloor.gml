///@arg floor

var flr = argument0;

return flr != noone
	&& flr._lane == _lane
	&& flr._xLeft + _bbWidth/2 <= x
	&& flr._xRight - _bbWidth/2 >= x
	&& flr._y == _targetGroundY
	&& !(_isJumping || _isFalling || _currentGroundY != _targetGroundY);
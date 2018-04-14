//Handle obstacles when switching (simple collision call should suffice, at worst at all 4 corners)
//Raycast to the floor to ensure precision y and shadow and nice offsets and all sorts!

if (_xSpeed != 0 && x + _xSpeed > sprite_width/2 && x + _xSpeed < room_width - sprite_width/2)
&&	(_xSpeed > 0 && IsPlatformCollision("right") == noone || _xSpeed < 0 && IsPlatformCollision("left") == noone)
{
	x += _xSpeed;
}
else
{
	_xSpeed = 0;
}

var onFloor = IsPlatformCollision("down") != noone;

if (_ySpeed > 0 && !onFloor || _ySpeed < 0 && IsPlatformCollision("up") == noone)
{
	y += _ySpeed;
}
else if (y != global.LaneYs[| _lane] && !onFloor)
{
	_isFalling = true;
	_ySpeed = _fallSpeed;
	_currentGroundY = global.LaneYs[| _lane];
	y += _ySpeed;
}
else if (onFloor)
{
	_isFalling = false;
	_currentGroundY = y;
	_ySpeed = 0;
}
else
{
	_ySpeed = 0;
}
depth = -1 * _lane;
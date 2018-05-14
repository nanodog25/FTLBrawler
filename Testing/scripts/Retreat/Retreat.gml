if (global.playerX < x && _xSpeed > 0)
{
	_direction = 1;
	_xSpeed = (_xSpeed/2) * _direction
	if (global.playerLane == _lane) ai_fire = true;
}
else if (global.playerX > x && _xSpeed < 0)
{
	_direction = -1;
	_xSpeed = (_xSpeed/2) * -_direction
	if (global.playerLane == _lane) ai_fire = true;
}
image_xscale = _direction;
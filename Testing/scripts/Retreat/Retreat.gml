if (global.playerX < x && _xSpeed > 0)
{
	_direction = -1;
	_xSpeed = abs((_xSpeed/2));
	if (global.playerLane == _lane) ai_fire = true;
}
else if (global.playerX > x && _xSpeed < 0)
{
	_direction = 1;
	_xSpeed = -abs((_xSpeed/2));
	if (global.playerLane == _lane) ai_fire = true;
}
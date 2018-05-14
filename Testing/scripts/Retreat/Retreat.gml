var isPlayerLeft = global.playerX < x;
if (isPlayerLeft && _xSpeed > 0)
{
	_direction = -1;
	_xSpeed = (_xSpeed/2) * -_direction
	if (global.playerLane == _lane) ai_fire = true;
}
else if (!isPlayerLeft && _xSpeed < 0)
{
	_direction = 1;
	_xSpeed = (_xSpeed/2) * -_direction
	if (global.playerLane == _lane) ai_fire = true;
}
if (_moveX == x)
{
	_direction = global.playerX > x ? -1 : 1;
	if (_moveLane != _lane)
	{
		var isMovingUp = _lane > _moveLane;
		SetSwitchLane(isMovingUp, -isMovingUp);
	}
	else
	{
		_isMoving = false;
	}
}
else
{
	var sp = min(_speed, abs(_moveX - x));
	_direction = _moveX > x ? 1 : -1;
	_xSpeed = sp * _direction;
}
if (_moveLane != _lane)
{
	moveUp = _lane > _moveLane;
	moveDown = !moveUp;
}

if (abs(_moveX - x) < _collisionBuffer)
{
	_direction = global.playerX > x ? -1 : 1;
	_isMoving = false;
}
else
{
	if (_sideCollision)
		jump = true;
	
	_direction = _moveX > x ? 1 : -1;
	isMovingRight = _direction == 1;
	isMovingLeft = !isMovingRight;
}
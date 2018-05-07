if (_moveLane != _lane)
{
	moveUp = _lane > _moveLane;
	moveDown = !moveUp;
}

if (abs(_moveX - x) < global.collisionBuffer)
{
	_isMoving = _moveLane != _lane || _isJumping || _isFalling;
	if (!_isMoving)
		image_xscale = global.playerX > x ? -1 : 1;
}
else
{
	if (_sideCollision)
		jump = true;
	
	_direction = _moveX > x ? 1 : -1;
	isMovingRight = _direction == 1;
	isMovingLeft = !isMovingRight;
}
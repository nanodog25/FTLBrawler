if (_moveLane != _lane)
{
	ai_moveUp = _lane > _moveLane;
	ai_moveDown = !ai_moveUp;
}

if (abs(_moveX - x) < global.collisionBuffer)
{
	_isMoving = _moveLane != _lane || _isJumping || _isFalling;
	if (!_isMoving)
	{
		image_xscale = global.playerX > x ? -1 : 1;
		if (_state == st_moveToCover)
			_state = st_inCover;
	}
}
else
{
	if (_sideCollision)
		ai_jump = true;
	
	_direction = _moveX > x ? 1 : -1;
	ai_isMovingRight = _direction == 1;
	ai_isMovingLeft = !ai_isMovingRight;
}
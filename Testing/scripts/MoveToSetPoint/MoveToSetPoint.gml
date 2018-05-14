if (ai_moveLane != _lane)
{
	ai_moveUp = _lane > ai_moveLane;
	ai_moveDown = !ai_moveUp;
}

if (abs(ai_moveX - x) < global.collisionBuffer)
{
	if (!(ai_moveLane != _lane || _isJumping || _isFalling))
	{
		image_xscale = global.playerX > x ? -1 : 1;
		if (_state == st_moveToCover)
			_nextState = st_inCover;
	}
}
else
{
	if (_sideCollision)
		ai_jump = true;
	
	_direction = ai_moveX > x ? 1 : -1;
	ai_isMovingRight = _direction == 1;
	ai_isMovingLeft = !ai_isMovingRight;
	
	if (_stateTimer < 3)
		ai_retreat = true;
}
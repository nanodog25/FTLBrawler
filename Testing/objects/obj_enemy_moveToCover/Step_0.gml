ai_fire = false;
ai_moveUp = false;
ai_moveDown = false;
ai_jump = false;
ai_isMovingLeft = false;
ai_isMovingRight = false;

if (!_isMoving)
{
	switch(_state)
	{
		case st_none:
			var coverIndex = _isHit && !_isLaunched ? 1 : 0;
			_isMoving = SetNearestCover(coverIndex);
			break;
		case st_inCover:
			PopAndShoot();
			break;
	}
}

EnemyStep();
fire = false;
moveUp = false;
moveDown = false;
jump = false;
isMovingLeft = false;
isMovingRight = false;

if (!_isMoving)
{
	var coverIndex = _isHit && !_isLaunched ? 1 : 0;
	_isMoving = SetNearestCover(coverIndex);
}

EnemyStep();
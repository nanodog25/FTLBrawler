fire = true;
moveUp = false;
moveDown = false;
jump = false;
isMovingLeft = false;
isMovingRight = false;

if (!_isMoving)
	_isMoving = SetHighestPoint();
	
EnemyStep();
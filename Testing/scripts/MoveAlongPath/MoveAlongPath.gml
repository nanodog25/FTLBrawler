if (_isHit || _path == noone || _pathStruct == noone || ds_list_empty(_path))
{
	_nextState = st_waiting;
	return;
}

var currentFloor = _path[| 0];
var nextFloor = currentFloor == ai_floor ? noone : _path[| 1];

if (currentFloor == ai_floor && IsAtPathAction())
{
	_direction = sign(global.playerX - x);
	if (_state == st_moveToCover)
		_nextState = st_inCover;
	else
		_nextState = st_waiting;
		
	return;
}

if (IsOnFloor(nextFloor))
{
	_onPath = true;
	ds_list_delete(_path, 0);
	SetPathStruct();
	return;
}

if (_pathStruct._requiredObj != noone && !instance_exists(_pathStruct._requiredObj))
{
	_nextState = st_waiting;
	return;
}


_onPath = true;

if (_pathStruct._isPerformingAction)
{
	if (_currentGroundY == _targetGroundY && x < _pathStruct._x)
	{
		ai_isMovingRight = true;
		ai_jump = _pathStruct._jump;
	}
	else if (_currentGroundY == _targetGroundY && x > _pathStruct._x)
	{
		ai_isMovingLeft = true;
		ai_jump = _pathStruct._jump;
	}		
	else
	{
		ai_moveUp = _lane != nextFloor._lane && _pathStruct._up && GetRelativeHeight(y, _lane) >= GetRelativeHeight(nextFloor._y, nextFloor._lane);
		ai_moveDown = _lane != nextFloor._lane && _pathStruct._down && GetRelativeHeight(y, _lane) >= GetRelativeHeight(nextFloor._y, nextFloor._lane);
		ai_isMovingLeft = _pathStruct._left;
		ai_isMovingRight = _pathStruct._right;
		ai_jump = _pathStruct._jump;
	}
}
else
{
	if (IsAtPathAction())
		_pathStruct._isPerformingAction = true;
	else
	{
		_direction = _pathStruct._x > x ? 1 : -1;
		ai_isMovingRight = _direction == 1;
		ai_isMovingLeft = !ai_isMovingRight;
		
		if (ai_isMovingRight && x > currentFloor._xRight - _bbWidth/2 - 10 || ai_isMovingLeft && x < currentFloor._xLeft + _bbWidth/2 + 10)
		{
			if (_isJumping || _isFalling)
			{
				ai_isMovingRight = false;
				ai_isMovingLeft = false;
			}
			else
				_pathStruct._isPerformingAction = true;
		}
		else
		{
			if (_sideCollision || IsNearPlayer())
				ai_jump = true;
			
			if (_stateTimer < 1)
				ai_retreat = true;
		}
	}
}


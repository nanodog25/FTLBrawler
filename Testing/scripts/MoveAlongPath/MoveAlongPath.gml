//switch lane as soon as possible
//jump between paths if necessary

if (_path == noone || ds_list_empty(_path))
	return;

var currentFloor = _path[| 0];
var nextFloor = currentFloor == ai_floor ? noone : _path[| 1];

var bbWidth = bbox_right-bbox_left;

if (nextFloor != noone && nextFloor._lane == _lane && nextFloor._xLeft - bbWidth <= x && nextFloor._xRight + bbWidth >= x && nextFloor._y == _targetGroundY)
{
	ds_list_delete(_path, 0);
	return;
}


if (nextFloor != noone)
{
	if (nextFloor._lane != _lane && nextFloor._xLeft <= x && nextFloor._xRight >= x)
	{
		ai_moveUp = _lane > nextFloor._lane;
		ai_moveDown = !ai_moveUp;
	}
	else
	{
		if (_sideCollision || IsNearPlayer())
			ai_jump = true;
	
		_direction = nextFloor._xLeft + bbWidth > x ? 1 : -1;
		ai_isMovingRight = _direction == 1;
		ai_isMovingLeft = !ai_isMovingRight;
	}
}
else
{
	ai_atPathDestination = true;
	if (ai_moveX == x)
	{
		if (!(_isJumping || _isFalling || _ySwitch != 0))
		{
			_direction = sign(global.playerX - x);
			if (_state == st_moveToCover)
				_nextState = st_inCover;
			else
				_nextState = st_waiting;
		}
	}
	else
	{
		_direction = ai_moveX > x ? 1 : -1;
		ai_isMovingRight = _direction == 1;
		ai_isMovingLeft = !ai_isMovingRight;
	}
}

if (_stateTimer < 1)
	ai_retreat = true;
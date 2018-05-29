var currentFloor = _path[| 0];
var nextFloor = _path[| 0] == ai_floor ? noone : _path[| 1];

_pathStruct._isPerformingAction = false;
_pathStruct._requiredObj = noone;

_pathStruct._up = false;
_pathStruct._down = false;
_pathStruct._right = false;
_pathStruct._left = false;
_pathStruct._jump = false;

if (nextFloor == noone)
{
	if (_nextState = st_moveToCover)
		_pathStruct._requiredObj = ai_coverObj;
	_pathStruct._x = ai_moveX;
}
else
{
	_pathStruct._up = nextFloor._lane < currentFloor._lane;
	_pathStruct._down = nextFloor._lane > currentFloor._lane;
	_pathStruct._jump = GetRelativeHeight(nextFloor._y, nextFloor._lane) > GetRelativeHeight(currentFloor._y, currentFloor._lane);

	var leftOverlap = nextFloor._xLeft - currentFloor._xRight;
	var rightOverlap = currentFloor._xLeft - nextFloor._xRight;
	
	if (leftOverlap >=0 || rightOverlap >= 0)
	{
		_pathStruct._x = leftOverlap >=0
			? nextFloor._xLeft + _bbWidth
			: nextFloor._xRight - _bbWidth;
			
		_pathStruct._jump = _pathStruct._jump || leftOverlap > _bbWidth || rightOverlap > _bbWidth;
	}
	else if (currentFloor._lane == nextFloor._lane)
	{
		var upperFloor;
		var lowerFloor;
		
		if (currentFloor._y < nextFloor._y)
		{
			upperFloor = currentFloor;
			lowerFloor = nextFloor;
		}
		else
		{
			upperFloor = nextFloor;
			lowerFloor = currentFloor;
		}
			
		if (ai_moveX > x && lowerFloor._xRight >= upperFloor._xRight + _bbWidth)
			_pathStruct._x = upperFloor._xRight + _bbWidth;
		else if(lowerFloor._xLeft <= upperFloor._xLeft - _bbWidth)
			_pathStruct._x = upperFloor._xLeft - _bbWidth;
		else if(lowerFloor._xRight >= upperFloor._xRight + _bbWidth)
			_pathStruct._x = upperFloor._xRight + _bbWidth;
		else
			_pathStruct = noone;
	}
	else
	{
		//for now, just have it switch early and move if possible
		var left = max(nextFloor._xLeft + _bbWidth/2, currentFloor._xLeft + _bbWidth/2);
		var right = min(nextFloor._xRight - _bbWidth/2, currentFloor._xRight - _bbWidth/2);
		
		//if (ai_moveX > x && x <= right)
		//	left = max(left, x);
		
		//if (ai_moveX < x && x >= left)
		//	right = min(right, x);
			
		//if (ai_moveX > x && ai_moveX >= left)
		//	right = min(right, ai_moveX);
			
		//if (ai_moveX < x && ai_moveX <= right)
		//	left = max(left, ai_moveX);
			
		if (right - left <= _bbWidth)
			_pathStruct._x = left;
		else
		{
			if (x < left)
				_pathStruct._x = left;
			else if (x > right)
				_pathStruct._x = right;
			else
				_pathStruct._x = x;
				
			if (ai_moveX > _pathStruct._x && right > _pathStruct._x + 30)
				_pathStruct._right = true;
				
			if (ai_moveX < _pathStruct._x && left < _pathStruct._x - 30)
				_pathStruct._left = true;
		}
	}
}
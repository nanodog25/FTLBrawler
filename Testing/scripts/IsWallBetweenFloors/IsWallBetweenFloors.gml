//@arg flr
//@arg targetFloor

var flr = argument0;
var targetFloor = argument1;
var isTargetRight = true;

if (flr._xLeft == targetFloor._xLeft)
	return false;
else if (flr._xLeft > targetFloor._xLeft)
	isTargetRight = false;

if (isTargetRight && targetFloor._xLeft <= flr._xRight || !isTargetRight && flr._xLeft <= targetFloor._xRight)
	return false;
	

var walls = GetWallsInLane(flr._lane, true);
var walls2 = GetWallsInLane(flr._lane, false);

var gapLeft = isTargetRight ? flr._xRight : targetFloor._xRight;
var gapRight = isTargetRight ? targetFloor._xLeft : flr._xLeft;

for (var i=0; i<ds_list_size(walls); i++)
{
	var wall = walls[| i];
	if (wall._x >= gapLeft && wall._x <= gapRight
		&& wall._yBase > flr._y - _bbHeight && wall._yTop < flr._y - _jumpClearance)
		return true;
}

for (var i=0; i<ds_list_size(walls2); i++)
{
	var wall = walls2[| i];
	if (wall._x >= gapLeft && wall._x <= gapRight
		&& wall._yBase > flr._y - _bbHeight && wall._yTop < flr._y - _jumpClearance)
		return true;
}

return false;
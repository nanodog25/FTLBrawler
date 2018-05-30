///@arg currentFloor
///@arg targetFloor
///@arg xTarget

var currentFloor = argument0;
var targetFloor = argument1;
var xTarget = argument2;

if (GetRelativeHeight(targetFloor._y, targetFloor._lane) != GetRelativeHeight(currentFloor._y, currentFloor._lane))
	return false;

if (currentFloor._lane == targetFloor._lane)
{
	if (xTarget > x)
		return targetFloor._xRight > currentFloor._xRight;
	else if (xTarget < x)
		return targetFloor._xLeft < currentFloor._xLeft;
	else
		return false;
}
else
{
	return abs(xTarget - targetFloor._xRight) <= abs(xTarget - currentFloor._xRight)
		|| abs(xTarget - targetFloor._xLeft) <= abs(xTarget - currentFloor._xLeft);
}
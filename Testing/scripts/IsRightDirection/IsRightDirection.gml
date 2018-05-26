///@arg currentFloor
///@arg targetFloor
///@arg xTarget

var currentFloor = argument0;
var targetFloor = argument1;
var xTarget = argument2;

if (currentFloor._lane == targetFloor._lane)
{
	if (xTarget > currentFloor._xRight)
		return targetFloor._xRight > currentFloor._xRight;
	else if (xTarget < currentFloor._xLeft)
		return targetFloor._xLeft < currentFloor._xLeft;
	else
		return xTarget >= targetFloor._xLeft && xTarget <= targetFloor._xRight;
}
else
{
	if (xTarget > x)
		return targetFloor._xRight > x;
	else
		return targetFloor._xLeft < x;
}
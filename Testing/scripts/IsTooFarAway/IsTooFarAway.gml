///@arg currentFloor
///@arg targetFloor

var currentFloor = argument0;
var targetFloor = argument1;

return currentFloor._xLeft - targetFloor._xRight > _jumpClearance
	|| targetFloor._xLeft - currentFloor._xRight > _jumpClearance; 
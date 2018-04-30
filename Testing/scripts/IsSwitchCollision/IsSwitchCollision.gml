/// @arg direction

var dir = argument0;

var targetLane = dir == "up"
	? _lane-1
	: _lane+1;

var objName = "LaneObject" + string(targetLane);

return IsCollision(_lane, targetLane, objName, false);
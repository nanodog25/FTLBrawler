/// @arg isMovingUp
/// @arg isMovingDown

var isMovingUp = argument0;
var isMovingDown = argument1;

if (isMovingUp && _lane != 0 && IsSwitchCollision("up") == noone) 
{ 
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_lane--;
	_targetGroundY = global.LaneYs[| _lane];
}
else if (isMovingDown && _lane != 4 && IsSwitchCollision("down") == noone) 
{ 
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_lane++;
	_targetGroundY = global.LaneYs[| _lane];
}
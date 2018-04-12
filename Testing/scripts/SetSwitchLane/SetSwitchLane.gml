/// @arg isMovingUp
/// @arg isMovingDown

if (argument0 && _lane != 0) 
{ 
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_lane--;
	_targetGroundY = global.LaneYs[| _lane];
}
else if (argument1 && _lane != 4) 
{ 
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_lane++;
	_targetGroundY = global.LaneYs[| _lane];
}
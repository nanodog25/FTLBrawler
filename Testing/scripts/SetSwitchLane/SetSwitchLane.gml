/// @arg isMovingUp
/// @arg isMovingDown

var isMovingUp = argument0;
var isMovingDown = argument1;

var canSwitch = false;

if (isMovingUp && _lane != 0 && !IsSwitchCollision("up")) 
{ 
	canSwitch = true;
	_lane--;
	_targetGroundY -= global.LaneWidth;
}
else if (isMovingDown && _lane != 4 && !IsSwitchCollision("down")) 
{ 
	canSwitch = true;
	_lane++;
	_targetGroundY += global.LaneWidth;
}

if (canSwitch)
{
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_isJumping = false;
	_ySpeed = 0;
}
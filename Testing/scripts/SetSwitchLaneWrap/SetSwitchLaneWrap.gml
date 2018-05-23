/// @arg isMovingUp
/// @arg isMovingDown

var isMovingUp = argument0;
var isMovingDown = argument1;

if (isMovingUp == isMovingDown)
	return;

var canSwitch = false;
_previousLane = _lane;

if (isMovingUp && _lane == 0 && !IsSwitchCollision(4)) 
{ 
	canSwitch = true;
	_lane=4;
	_targetGroundY += global.LaneWidth*4;
}
else if (isMovingDown && _lane == 4 && !IsSwitchCollision(0)) 
{ 
	canSwitch = true;
	_lane=0;
	_targetGroundY -= global.LaneWidth*4;
}

if (canSwitch)
{
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_isJumping = false;
	_ySpeed = 0;
}
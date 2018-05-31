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
	_isWrapping = true;
	_targetGroundY -= global.LaneWidth;
}

if (canSwitch)
{
	_isSwitchingLane = true;
	_canSwitchLane = false;
	_isJumping = false;
	_ySpeed = 0;
}
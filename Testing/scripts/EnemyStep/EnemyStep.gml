if (bbox_right < global.roomLeft || bbox_left > global.roomRight)
{
	instance_destroy();
	return;
}

SetSpeedMod();

_ySwitch = 0;

if(!IsActorInterrupted())
{
	_xSpeed = 0;
	
	AI_DecideMovement();
	AI_CalculateMovement();
	
	ActorStaticAnimation();
}

if (_isSwitchingLane)
{
	SwitchLane();
}

if (_isJumping)
{	
	_isFalling = false;
	Jump(true);
}
else if (_isFalling)
{
	Fall();
}

ApplyMovement();
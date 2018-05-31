if (bbox_right < global.roomLeft || bbox_left > global.roomRight)
{
	instance_destroy();
	return;
}

SetSpeedMod();

_ySwitch = 0;

if(!IsActorInterrupted())
{
	AI_DecideMovement();
	AI_CalculateMovement();
	
	ActorStaticAnimation();
}

if ((_moveUp || _moveDown) && !_isSwitchingLane && _canEverSwitchLane && _canSwitchLane  && !IsItemActive(global.ItemLaneBarrier))
{
	SetSwitchLane(_moveUp, _moveDown);
	_moveUp = false;
	_moveDown = false;
	if (IsAbilityActive(global.AbilityItemBuff))
		_currentHP -= 20;
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
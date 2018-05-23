SetSpeedMod();

_ySwitch = 0;
_isBlocking = false;
_isMelee = global.playerMelee;


if (!IsActorInterrupted())
{
	if (_isMelee)
	{
		Player_melee();
		Player_switch();
		Player_jump();
	}
	else
	{
		if(!IsPlayer_punching() && !IsPlayer_shielding())
			Player_fire();
			
		Player_switch();
		Player_jump();
	}
	
	if (!_isBlocking && (!_isSwitchingLane || _xSpeed == 0))
	{
		Player_move();
	}
	
	ActorStaticAnimation();
}

if ((_moveUp || _moveDown) && !_isSwitchingLane && _canEverSwitchLane && _canSwitchLane  && !IsItemActive(global.ItemLaneBarrier))
{
	SetSwitchLane(_moveUp, _moveDown);
	
	if (!_isSwitchingLane && !_isWormholeCooldown && IsAbilityActive(global.AbilityWrapSwitch))
		SetSwitchLaneWrap(_moveUp, _moveDown);
		
	_moveUp = false;
	_moveDown = false;
}

if (_isSwitchingLane)
{
	if (IsAbilityActive(global.AbilityWormhole))
	{
		_ySwitch = _targetGroundY - _currentGroundY;
		_isSwitchingLane = false;
		_isWormholeCooldown = true;
		alarm_set(4, InSeconds(0.2));
	}
	else
	{
		SwitchLane();
	}
}

if (_isJumping)
{	
	var jump = keyboard_check(global.KeyJump);
	_isFalling = false;
	Jump(jump);
}
else if (_isFalling)
{
	Fall();
}

if (_isHit || _isPunching && image_index > image_number - 1)
{
	_isPunching = false;
}

ApplyMovement();
UpdatePlayerVariables();
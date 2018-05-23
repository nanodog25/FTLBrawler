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
	Player_wraparound();
	_moveUp = false;
	_moveDown = false;
}

if (_isWormholeCooldown && !_isHit && IsAbilityActive(global.AbilityTelefrag))
{
	Player_telefrag();
}
else if (_isSwitchingLane)
{
	if (IsAbilityActive(global.AbilityWormhole))
		Player_wormhole();
	else
		SwitchLane();
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
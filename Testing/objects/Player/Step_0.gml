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
		if (!IsPlayer_shielding())
		{
			if(!IsPlayer_punching())
				Player_fire();
			Player_switch();
			Player_jump();
		}
	}
	
	if (!_isBlocking && (!_isSwitchingLane || _xSpeed == 0))
	{
		Player_move();
	}
	
	ActorStaticAnimation();
}

if (_isSwitchingLane)
{
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
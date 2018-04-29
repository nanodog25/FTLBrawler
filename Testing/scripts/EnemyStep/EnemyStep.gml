_ySwitch = 0;

if (_isLaunched)
{
	Launch();
}
else if (_isHit)
{
	sprite_index = spr_jack_hit;
	image_xscale = _hitDirection;
	_xSpeed = _hitDirection * _knockBack;
}
else if (_currentHP <= 0)
{
	if (sprite_index != spr_jack_die)
	{
		_xSpeed = 0;
		sprite_index = spr_jack_die;
		image_index = 0;
	}
	else if (image_index > image_number - 1)
		image_speed = 0;
	return;
}
else
{
	_xSpeed = 0;
	
	if (_isMoving)
	{
		MoveToSetPoint();
	}
	
	if (fire && _canFire)
	{
		Fire(_projectile, 50, -40);
	}

	_isAttacking = fire;
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
	{
		SetSwitchLane(moveUp, moveDown);
	}
	
	if (!_isJumping && !_isFalling)
	{	
		_canSwitchLane = true;
		if (jump)
		{
			sprite_index = spr_jack_jump;
			image_index = 0;
			_isJumping = true;
			_jumpHeight = 0;
		}
	}
}

if (_isSwitchingLane)
{
	SwitchLane();
}
else if (!_isHit)
{
	MoveHorizontally(isMovingLeft, isMovingRight);
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

if (!_isHit && !_isJumping && !_isFalling)
{
	if (_xSpeed == 0)
		sprite_index = _isAttacking ? spr_jack_shoot : spr_jack_stand;
	else
		sprite_index = _isAttacking ? spr_jack_runshoot : spr_jack_run;
}
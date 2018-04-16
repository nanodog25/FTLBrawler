_ySpeed = 0;

if (_isHit)
{
	sprite_index = spr_jack_hit;
	image_xscale = _hitDirection;
	_xSpeed = _hitDirection * 1;
}
else
{
	var fire = random(4) > 3;
	if (fire && _canFire)
	{
		Fire(obj_Bullet, 30, -40);
	}

	_isAttacking = fire;
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
	{
		var moveUp = random(10) > 9.9;
		var moveDown = random(10) > 9.9;		
		SetSwitchLane(moveUp, moveDown);
	}
	
	if (!_isJumping && !_isFalling)
	{	
		_canSwitchLane = true;
		var jump = random(10) > 9;	
		if (jump)
		{
			sprite_index = spr_jack_jump;
			image_index = 0;
			_isJumping = true;
			_jumpHeight = 0;
		}
	}
}

if (_isJumping)
{	
	_isFalling = false;
	Jump();
}
if (_isFalling)
{
	Fall();
}
	
if (_isSwitchingLane)
{
	SwitchLane();
}
else if (!_isHit)
{
	var isMovingLeft = random(2) > 1;
	var isMovingRight = random(2) > 1;
	MoveHorizontally(isMovingLeft, isMovingRight);
}

ApplyMovement();

if (!_isHit && !_isJumping && !_isFalling)
{
	if (_xSpeed == 0)
		sprite_index = _isAttacking ? spr_jack_shoot : spr_jack_stand;
	else
		sprite_index = _isAttacking ? spr_jack_runshoot : spr_jack_run;
}
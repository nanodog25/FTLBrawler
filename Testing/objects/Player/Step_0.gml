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
else if (_currentHP == 0)
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
else if (!_isPunching)
{
	if (!_isJumping && !_isFalling && keyboard_check_pressed(global.KeyPunch))
	{
		sprite_index = spr_jack_punch;
		image_index = 0;
		_isPunching = true;
		var inst = instance_create_layer(x, y, "Projectiles", obj_punch);
		with (inst)
		{
			_origin = other;
			_xOffset = 30;
			_yOffset = -40;
		}
	}
	else
	{
		var fire1 = keyboard_check(global.KeyFire1);
		var fire2 = keyboard_check(global.KeyFire2);
		if (fire1 && _canFire)
		{
			Fire(_projectile, 30, -40);
		}
		else if (fire2 && _canFire)
		{
			Fire(obj_proj_spreadGrenade, 30, -40);
		}
		_isAttacking = fire1 || fire2;
	
		if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane)
		{
			var moveUp = _isJumping || _isFalling
				? keyboard_check(global.KeyUp)
				: keyboard_check_pressed(global.KeyUp);
			var moveDown = _isJumping || _isFalling
				? keyboard_check(global.KeyDown)
				: keyboard_check_pressed(global.KeyDown);		
			SetSwitchLane(moveUp, moveDown);
		}
	
		if (!_isJumping && !_isFalling)
		{	
			_canSwitchLane = true;
			var jump = keyboard_check_pressed(global.KeyJump);	
			if (jump)
			{
				SetJumping();
			}
		}
	}
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

if (!_isHit && !_isSwitchingLane)
{
	var isMovingLeft = keyboard_check(global.KeyLeft);
	var isMovingRight = keyboard_check(global.KeyRight);
	MoveHorizontally(isMovingLeft, isMovingRight);
}

ApplyMovement();
UpdatePlayerVariables();

if (!_isHit && !_isJumping && !_isFalling && !_isPunching)
{
	if (_xSpeed == 0)
		sprite_index = _isAttacking ? spr_jack_shoot : spr_jack_stand;
	else
		sprite_index = _isAttacking ? spr_jack_runshoot : spr_jack_run;
}
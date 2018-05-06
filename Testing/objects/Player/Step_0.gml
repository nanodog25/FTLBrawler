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
			_canFire = false;

			var inst = instance_create_layer(x, y, "Projectiles", _projectile);
			with (inst)
			{
				_origin = other;
				_xOffset = 50;
				_yOffset = -40;

				_laneCrossing = global.laneCrossing;
				_isVertical = global.isVertical;
				_isIgnoringCover = global.isIgnoringCover;
				_isPiercing = global.isPiercing;
				_isDestructible = global.isDestructible;
				_isLauncher = global.isLauncher;
				_damage = global.damage;
				_rateOfFire = global.rateOfFire;
				_buildUpDuration = global.buildUpDuration;
				_travelSpeed = global.travelSpeed;
				_travelDistance = global.travelDistance;
				_knockBack = global.knockBack;
				_stunLength = global.stunLength;
				_isUp = global.isUp;
			}

			alarm_set(0, inst._rateOfFire);
		}
		else if (fire2 && _canFire)
		{
			_canFire = false;

			var inst = instance_create_layer(x, y, "Projectiles", _projectile);
			with (inst)
			{
				_origin = other;
				_xOffset = 50;
				_yOffset = -40;

				_laneCrossing = global.laneCrossing2;
				_isVertical = global.isVertical2;
				_isIgnoringCover = global.isIgnoringCover2;
				_isPiercing = global.isPiercing2;
				_isDestructible = global.isDestructible2;
				_isLauncher = global.isLauncher2;
				_damage = global.damage2;
				_rateOfFire = global.rateOfFire2;
				_buildUpDuration = global.buildUpDuration2;
				_travelSpeed = global.travelSpeed2;
				_travelDistance = global.travelDistance2;
				_knockBack = global.knockBack2;
				_stunLength = global.stunLength2;
				_isUp = global.isUp2;
			}

			alarm_set(0, inst._rateOfFire);
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
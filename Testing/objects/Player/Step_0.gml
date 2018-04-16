Debug();

if (_isHit)
{

}
else
{
	_ySpeed = 0;
	
	var fire1 = keyboard_check(global.KeyFire1);
	var fire2 = keyboard_check(global.KeyFire2);
	if (fire1 && _canFire)
	{
		Fire(obj_Bullet, 30, -40);
	}
	else if (fire2 && _canFire)
	{
		Fire(obj_SpreadGrenade, 30, -40);
	}
	_isAttacking = fire1 || fire2;
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
	{
		var moveUp = keyboard_check_pressed(global.KeyUp);
		var moveDown = keyboard_check_pressed(global.KeyDown);		
		SetSwitchLane(moveUp, moveDown);
	}
	
	if (!_isJumping && !_isFalling)
	{	
		_canSwitchLane = true;
		var jump = keyboard_check(global.KeyJump);	
		if (jump)
		{
			sprite_index = spr_jack_jump;
			image_index = 0;
			_isJumping = true;
			_jumpHeight = 0;
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
	else
	{
		var isMovingLeft = keyboard_check(global.KeyLeft);
		var isMovingRight = keyboard_check(global.KeyRight);
		MoveHorizontally(isMovingLeft, isMovingRight);
	}
}

ApplyMovement();

if (!_isHit && !_isJumping && !_isFalling)
{
	if (_xSpeed == 0)
		sprite_index = _isAttacking ? spr_jack_shoot : spr_jack_stand;
	else
		sprite_index = _isAttacking ? spr_jack_runshoot : spr_jack_run;
}
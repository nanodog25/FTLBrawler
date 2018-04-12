Debug();

if (_isHit)
{

}
else
{
	_ySpeed = 0;
	
	if (_isJumping)
	{	
		Jump();
	}
	else if (_isFalling)
	{
		Fall();
	}
	
	if (_isSwitchingLane)
	{
		SwitchLane();
	}
	else if (_isAttacking)
	{
		if (!_isJumping && !_isFalling)
			_xSpeed = 0;
	}
	else
	{
		var isMovingLeft = keyboard_check(global.KeyLeft);
		var isMovingRight = keyboard_check(global.KeyRight);
		MoveHorizontally(isMovingLeft, isMovingRight);
	}
	
	if (!_isAttacking)
	{
		var fire1 = keyboard_check(global.KeyFire1);
		var fire2 = keyboard_check(global.KeyFire2);
		if (fire1)
		{
			Fire(obj_PlayerBullet, 20, -50);
		}
		else if (fire2)
		{
			Fire(obj_PlayerSpreadGrenade, 20, -50);
		}
	}
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling && !_isAttacking)
	{
		var moveUp = keyboard_check_pressed(global.KeyUp);
		var moveDown = keyboard_check_pressed(global.KeyDown);		
		SetSwitchLane(moveUp, moveDown);
	}
	
	if (!_isJumping && !_isFalling && !_isAttacking)
	{	
		_canSwitchLane = true;
		var jump = keyboard_check(global.KeyJump);	
		if (jump)
		{
			sprite_index = spr_jack_jump;
			image_index = 0;
			_isJumping = true;
		}
	}
}

ApplyMovement();

if (!_isHit && !_isJumping && !_isFalling && !_isAttacking && !_isSwitchingLane)
{
	if (_xSpeed == 0)
		sprite_index = spr_jack_stand;
	else
		sprite_index = spr_jack_run;
}
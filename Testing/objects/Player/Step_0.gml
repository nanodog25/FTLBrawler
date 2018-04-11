Debug();

if (_isHit)
{

}
else
{
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
	else
	{
		var isMovingLeft = keyboard_check(global.KeyLeft);
		var isMovingRight = keyboard_check(global.KeyRight);
		MoveHorizontally(isMovingLeft, isMovingRight);
	}
	
	//if (_canFire)
	//{
	//	var fire1 = keyboard_check(global.KeyFire1);
	//	var fire2 = keyboard_check(global.KeyFire2);
	//	if (fire1)
	//	{
	//		//sprite_index = spr_jack_fire;
	//		_canFire = false;
	//		var inst = instance_create(x, y, obj_playerSpreadGrenade);
	//		with (inst)
	//		{
	//			direction = image_xscale;
	//		}
	//	}
	//	else if (fire2)
	//	{
	//		//sprite_index = spr_jack_fire;
	//		_canFire = false;
	//		var inst = instance_create(x, y, obj_playerBullet);
	//		with (inst)
	//		{
	//			direction = image_xscale;
	//		}
	//	}
	//}
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
	{
		var moveUp = keyboard_check_pressed(global.KeyUp);
		var moveDown = keyboard_check_pressed(global.KeyDown);
	
		if (moveUp && _lane != 0) 
		{ 
			_isSwitchingLane = true;
			_canSwitchLane = false;
			_lane--;
			_targetGroundY = global.LaneYs[| _lane];
		}
		else if (moveDown && _lane != 4) 
		{ 
			_isSwitchingLane = true;
			_canSwitchLane = false;
			_lane++;
			_targetGroundY = global.LaneYs[| _lane];
		}
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
		}
	}
	
	if (!_isJumping && !_isFalling && !_isAttacking && !_isSwitchingLane)
	{
		if (_xSpeed == 0)
			sprite_index = spr_jack_stand;
		else
			sprite_index = spr_jack_run;
	}
}


//MOVEMENT
if (x > sprite_width/2 && x < room_width - sprite_width/2)
	x += _xSpeed;
	
depth = -1 * _currentGroundY;

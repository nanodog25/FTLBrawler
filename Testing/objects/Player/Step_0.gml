Debug();

if (_isHit)
{

}
else
{
	if (_isJumping)
	{	
		Jumping();
	}
	else if (_isFalling)
	{
		Falling();
	}
	
	if (_isSwitchingLane)
	{
		LaneSwitching();
	}
	else
	{
		var moveLeft = keyboard_check(ord(global.KeyLeft));
		var moveRight = keyboard_check(ord(global.KeyRight));
		Horizontal(moveLeft, moveRight);
	}
	
	if (!_isSwitchingLane && _canEverSwitchLane && _canSwitchLane && !_isFalling)
	{
		var moveUp = keyboard_check_pressed(ord(global.KeyUp));
		var moveDown = keyboard_check_pressed(ord(global.KeyDown));
	
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

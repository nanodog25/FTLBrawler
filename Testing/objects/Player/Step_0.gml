//DEBUG
if (keyboard_check_pressed(ord(global.KeyGrid)))
{
	layer_set_visible("lay_grid", !layer_get_visible("lay_grid"));
}


//ON STEP
//INPUT
if (_isHit)
{

}
else
{
	if (_isJumping)
	{	
		if (y > _currentGroundY - _jumpHeight)
		{
			y -= _jumpSpeed;
		}
		
		if (y <= _currentGroundY - _jumpHeight)
		{
			_isJumping = false;
			_isFalling = true;
		}
	}
	else if (_isFalling)
	{
		if (y < _currentGroundY)
		{
			y += _fallSpeed;
		}
		if (y >= _currentGroundY)
		{
			y = _currentGroundY;
			_isFalling = false;
		}
	}
	if (_isSwitchingLane)
	{
		switchSpeed = _switchSpeed*_switchSpeedMod;
		currenctGroundY = _currentGroundY;
		
		if (_xSpeed > 0)
		{
			_xSpeed = switchSpeed;
		}
		else if (_xSpeed < 0)
		{
			_xSpeed = -switchSpeed;
		}

		if (_currentGroundY > _targetGroundY)
		{
			_currentGroundY -= switchSpeed;
			if (_currentGroundY < _targetGroundY)
				_currentGroundY = _targetGroundY;
		}
		else if (_currentGroundY < _targetGroundY)
		{
			_currentGroundY += switchSpeed;
			if (_currentGroundY > _targetGroundY)
				_currentGroundY = _targetGroundY;
		}
		
		y += _currentGroundY - currenctGroundY;
		_isSwitchingLane = _targetGroundY != _currentGroundY;
	}
	else
	{
		moveLeft = keyboard_check(ord(global.KeyLeft));
		moveRight = keyboard_check(ord(global.KeyRight));
		
		if (moveLeft && moveRight || !moveLeft && !moveRight)
		{
			_xSpeed = 0;
		}
		else if (moveLeft && x > sprite_width/2) 
		{ 
			_xSpeed = -1*_speed*_speedMod;			
			image_xscale = 1;
		}
		else if (moveRight && x < room_width - sprite_width/2) 
		{ 
			_xSpeed = _speed*_speedMod;	
			image_xscale = -1;
		}
	}
	
	if (!_isSwitchingLane && _canSwitchLane && !_isFalling)
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

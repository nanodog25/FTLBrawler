if (!_isJumping && !_isFalling)
{	
	_canSwitchLane = true;
	var jump = keyboard_check_pressed(global.KeyJump);	
	if (jump)
	{
		SetJumping();
	}
}
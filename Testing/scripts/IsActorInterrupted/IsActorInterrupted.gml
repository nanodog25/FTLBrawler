if (_isLaunched)
{
	Launch();
	return true;
}
else if (_isHit || _hasBlocked)
{
	if (_isHit)
		sprite_index = spr_jack_hit;
	_direction = -_hitDirection;
	_xSpeed = _hitDirection * _knockBack;
	
	if (self == Player)
	{
		Player_switch();
		Player_jump();
	}
	return true;
}
else if (_currentHP <= 0)
{
	_isSwitchingLane = false;
	_isJumping = false;
	
	if (sprite_index != spr_jack_die)
	{
		_xSpeed = 0;
		sprite_index = spr_jack_die;
		image_index = 0;
	}
	else if (image_index > image_number - 1)
		image_speed = 0;
		
	return true;
}
return false;
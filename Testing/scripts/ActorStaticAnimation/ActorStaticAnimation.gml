if (!_isBlocking && !_isJumping && !_isFalling && !_isPunching)
{
	if (_xSpeed == 0)
		sprite_index = spr_jack_stand;
	else
		sprite_index = _isAttacking ? spr_jack_runshoot : spr_jack_run;
		
	if (_isAttacking && _xSpeed == 0)
	{
		if (_hasFired)
		{
			sprite_index = spr_jack_fire;
			image_index = 0;
			_hasFired = false;
		}
		else if (sprite_index != spr_jack_fire || image_index > image_number - 1)
		{
			sprite_index = spr_jack_aim;
		}
	}
}
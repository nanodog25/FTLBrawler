if (keyboard_check(global.KeyMidRight) && _direction == -1 || keyboard_check(global.KeyMidLeft) && _direction == 1)
{
	sprite_index = spr_jack_punch;
	image_index = 0;
	image_speed = 0;
	_isBlocking = true;
	_xSpeed = 0;
	return true;
}
return false;
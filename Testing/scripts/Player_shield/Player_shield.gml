if(keyboard_check(global.KeyShield))
{
	sprite_index = spr_jack_punch;
	image_index = 0;
	image_speed = 0;
	_isBlocking = true;
	_xSpeed = 0;
	return true;
}
return false;
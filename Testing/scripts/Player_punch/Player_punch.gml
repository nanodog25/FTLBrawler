if (!_isJumping && !_isFalling && keyboard_check_pressed(global.KeyPunch))
{
	sprite_index = spr_jack_punch;
	image_index = 0;
	_isPunching = true;
	var inst = instance_create_layer(x, y, "Projectiles", obj_punch);
	with (inst)
	{
		_origin = other;
		_xOffset = 30;
		_yOffset = -40;
	}
	return true;
}
return false;
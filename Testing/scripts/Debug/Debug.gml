if (keyboard_check_pressed(global.KeyGrid))
{
	layer_depth("Debug_Grid", -1000);
	layer_set_visible("Debug_Grid", !layer_get_visible("Debug_Grid"));
}

if (keyboard_check_direct(vk_lcontrol))
{
	if (keyboard_check(global.KeyMinus))
	{
		global.playerSpeed--;
	}

	if (keyboard_check(global.KeyPlus))
	{
		global.playerSpeed++;
	}
}
else if (keyboard_check_direct(vk_lalt))
{
	if (keyboard_check(global.KeyMinus))
	{
		global.playerSwitchSpeed--;
	}

	if (keyboard_check(global.KeyPlus))
	{
		global.playerSwitchSpeed++;
	}
}
else if (keyboard_check_direct(vk_rshift))
{
	if (keyboard_check(global.KeyMinus))
	{
		global.playerMaxJumpHeight--;
	}

	if (keyboard_check(global.KeyPlus))
	{
		global.playerMaxJumpHeight++;
	}
}
else if (keyboard_check_direct(vk_rcontrol))
{
	if (keyboard_check(global.KeyMinus))
	{
		global.playerJumpSpeed--;
	}

	if (keyboard_check(global.KeyPlus))
	{
		global.playerJumpSpeed++;
	}
}
else if (keyboard_check_direct(vk_lshift))
{
	if (keyboard_check(global.KeyMinus))
	{
		global.playerFallSpeed--;
	}

	if (keyboard_check(global.KeyPlus))
	{
		global.playerFallSpeed++;
	}
}
else
{
	if (keyboard_check_pressed(global.KeyMinus) && room_exists(room_previous(room)))
	{
		room_goto_previous();
	}

	if (keyboard_check_pressed(global.KeyPlus) && room_exists(room_next(room)))
	{
		room_goto_next();
	}
}
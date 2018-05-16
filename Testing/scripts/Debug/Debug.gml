if (keyboard_check_pressed(global.KeyGrid))
{
	_displayGrid = !_displayGrid;
}

if (keyboard_check_pressed(global.KeySlow))
{
	if (game_get_speed(gamespeed_fps) == 60)
		game_set_speed(30, gamespeed_fps);
	else
		game_set_speed(60, gamespeed_fps);
}


if (keyboard_check_pressed(global.KeyMinus) && room_exists(room_previous(room)) && room_previous(room) != Menu)
{
	global.isFightInitiated = false;
	room_goto_previous();
}

if (keyboard_check_pressed(global.KeyPlus) && room_exists(room_next(room)) && room_next(room) != Menu)
{
	global.isFightInitiated = false;
	room_goto_next();
}

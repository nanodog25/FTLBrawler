if (keyboard_check_pressed(global.KeyGrid))
{
	_displayGrid = !_displayGrid;
}

if (keyboard_check_pressed(global.KeyMinus) && room_exists(room_previous(room)) && room_previous(room) != Menu)
{
	EndFight();
	room_goto_previous();
}

if (keyboard_check_pressed(global.KeyPlus) && room_exists(room_next(room)) && room_next(room) != Menu)
{
	EndFight();
	room_goto_next();
}

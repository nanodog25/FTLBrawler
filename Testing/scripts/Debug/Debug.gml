if (keyboard_check_pressed(global.KeyGrid))
{
	_displayGrid = !_displayGrid;
}

if (keyboard_check_pressed(global.KeyChangeMode))
{
	global.playerMelee = !global.playerMelee;
}

if (keyboard_check_pressed(global.KeyMinus) && room_exists(room_previous(room)) && room_previous(room) != Menu && room_previous(room) != ItemSelect && room_previous(room) != ItemSwap)
{
	EndFight();
	room_goto_previous();
}

if (keyboard_check_pressed(global.KeyPlus) && room_exists(room_next(room)) && room_next(room) != Menu && room_next(room) != ItemSelect && room_next(room) != ItemSwap)
{
	EndFight();
	room_goto_next();
}

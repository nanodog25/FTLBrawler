if (keyboard_check_pressed(global.KeyGrid))
{
	_displayGrid = !_displayGrid;
}

if (keyboard_check_pressed(global.KeyChangeMode))
{
	global.playerMelee = !global.playerMelee;
}

if (keyboard_check_pressed(global.KeyMinus))
{
	var currentIndex = room - 1;
	while (!room_exists(currentIndex) || ds_list_find_index(_roomsOutOfBounds, currentIndex) != -1)
	{
		if (currentIndex < room_first)
			currentIndex = room_last;
		else
			currentIndex--;
	}
	EndFight();
	room_goto(currentIndex);
}
else if (keyboard_check_pressed(global.KeyPlus))
{
	var currentIndex = room + 1;
	while (!room_exists(currentIndex) || ds_list_find_index(_roomsOutOfBounds, currentIndex) != -1)
	{
		if (currentIndex > room_last)
			currentIndex = room_first;
		else
			currentIndex++;
	}
	EndFight();
	room_goto(currentIndex);
}

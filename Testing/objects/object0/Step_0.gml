//Shortcuts for keypresses
playerSpeed = 5;

MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);
JUMP = keyboard_check(vk_space);

if (MOVELEFT || MOVERIGHT || MOVEUP || MOVEDOWN)
{
	sprite_index = spr_Jack_run;
	if (MOVELEFT && x > sprite_width/2) 
	{ 
	    x -= playerSpeed;
		image_xscale = 1;
}

	if (MOVERIGHT && x < room_width - sprite_width/2) 
	{ 
	    x += playerSpeed; 
		image_xscale = -1;
	}

	if (MOVEUP && y > room_height - sprite_height/2) 
	{ 
	    y -= playerSpeed; 
	}

	if (MOVEDOWN && y < room_height - sprite_height/2) 
	{ 
	    y += playerSpeed; 
	}
}
else
{
		sprite_index = spr_Jack_stand;
}

if (JUMP)
{
		sprite_index = spr_jack_jump;
		y -= 5;
}
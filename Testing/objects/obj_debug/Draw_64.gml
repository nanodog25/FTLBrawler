draw_set_color(c_white);
draw_text(10,10,
	"room(+/-): " + room_get_name(room) + "\n\n" +
	"UP:    " + KeyToText(global.KeyUp) + "\n" +
	"DOWN:  " + KeyToText(global.KeyDown) + "\n" +
	"LEFT:  " + KeyToText(global.KeyLeft) + "\n" +
	"RIGHT: " + KeyToText(global.KeyRight) + "\n"
);

draw_text(200,50,
	"JUMP:  " + KeyToText(global.KeyJump) + "\n" +
	"FIRE1: " + KeyToText(global.KeyFire1) + "\n" +
	"FIRE2: " + KeyToText(global.KeyFire2) + "\n" +
	"PUNCH: " + KeyToText(global.KeyPunch) + "\n" +
	"lanes: " + KeyToText(global.KeyGrid) + "\n"
);

if (instance_exists(Player))
{
	var p = instance_find(Player, 0);
	draw_text(300,50,
		"left/right speed:\n" +
		"switch speed:\n" +
		"jump height:\n" +
		"jump speed:\n" +
		"fall speed:\n"
	);
	
	draw_text(570,10,
		"current projectile: " + string(object_get_name(p._projectile)) + "\n" +
		"damage:\n" +
		"rateOfFire:\n" +
		"buildUpDuration:\n" +
		"travelSpeed:\n" +
		"travelDistance:\n" +
		"knockBack:\n" +
		"stunLength:\n"
	);
	
	draw_text(850, 30,
		"laneCrossing:\n" +
		"isVertical:\n" +
		"isIgnoringCover:\n" +
		"isPiercing:\n" +
		"isDestructible:\n" +
		"isUp:\n"
	);
//laneCrossing
//isVertical
//isIgnoringCover
//isPiercing
//isDestructible 
//isLauncher 
//damage
//rateOfFire
//buildUpDuration
//travelSpeed
//travelDistance 
//knockBack
//stunLength
//direction
}
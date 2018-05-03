draw_set_color(c_white);
draw_text(10,10,
"Open Objects>Player>Create to edit\n\n" +
"UP: " + KeyToText(global.KeyUp) + "\n" +
"DOWN: " + KeyToText(global.KeyDown) + "\n" +
"LEFT: " + KeyToText(global.KeyLeft) + "\n" +
"RIGHT: " + KeyToText(global.KeyRight) + "\n"
);

draw_text(200,50,
"JUMP: " + KeyToText(global.KeyJump) + "\n" +
"FIRE1: " + KeyToText(global.KeyFire1) + "\n" +
"FIRE2: " + KeyToText(global.KeyFire2) + "\n" +
"PUNCH: " + KeyToText(global.KeyPunch) + "\n" +
"toggle lanes: " + KeyToText(global.KeyGrid) + "\n"
);

draw_text(500,10,
	"room(+/-): " + room_get_name(room)
	);

if (instance_exists(Player))
{
	var p = instance_find(Player, 0);
	draw_text(500,50,
	"left/right movement speed:\n" +
	"up/down switch speed:\n" +
	"max jump height:\n" +
	"jump speed:\n" +
	"fall speed:\n" +
	"current projectile: " + string(object_get_name(p._projectile)) + "\n" 
	);
}
draw_set_color(c_white);
draw_text(10,10,
	"room(+/-): " + room_get_name(room) + "\n\n" +
	"UP:    " + KeyToText(global.KeyUp) + "\n" +
	"DOWN:  " + KeyToText(global.KeyDown) + "\n" +
	"LEFT:  " + KeyToText(global.KeyLeft) + "\n" +
	"RIGHT: " + KeyToText(global.KeyRight) + "\n" +
	"ITEMS: " + KeyToText(global.KeyItemMenu) + "\n"
);

draw_text(200,50,
	"JUMP:  " + KeyToText(global.KeyJump) + "\n" +
	"FIRE1: " + KeyToText(global.KeyFire1) + "\n" +
	"FIRE2: " + KeyToText(global.KeyFire2) + "\n" +
	"PUNCH: " + KeyToText(global.KeyPunch) + "\n" +
	"BLOCK: " + KeyToText(global.KeyShield) + "\n" +
	"lanes: " + KeyToText(global.KeyGrid) + "\n"
);
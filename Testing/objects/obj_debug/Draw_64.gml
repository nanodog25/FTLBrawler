draw_set_color(c_white);
draw_text(10,10,
	"room(+/-): " + room_get_name(room) + "\n\n" +
	"UP:    " + KeyToText(global.KeyUp) + "\n" +
	"DOWN:  " + KeyToText(global.KeyDown) + "\n" +
	"LEFT:  " + KeyToText(global.KeyLeft) + "\n" +
	"RIGHT: " + KeyToText(global.KeyRight) + "\n" +
	"ITEMS: " + KeyToText(global.KeyItemMenu) + "\n" +
	"JUMP:  " + KeyToText(global.KeyJump) + "\n"
);

if (global.playerMelee)
{
	draw_text(200,50,
		"MODE:         FISTS" +
		"HIGH ATTACK:  " + KeyToText(global.KeyHigh) + "\n" +
		"LOW ATTACK:   " + KeyToText(global.KeyLow) + "\n" +
		"LEFT ATTACK:  " + KeyToText(global.KeyMidLeft) + "\n" +
		"RIGHT ATTACK: " + KeyToText(global.KeyMidRight) + "\n" +
		"CHANGE MODE:  " + KeyToText(global.KeyChangeMode) + "\n"
	);
}
else
{
	draw_text(200,50,
		"MODE:          GUNS" +
		"LOB SHOT:      " + KeyToText(global.KeyHigh) + "\n" +
		"STRAIGHT SHOT: " + KeyToText(global.KeyLow) + "\n" +
		"PUNCH:         " + "Arrow towards enemy" + "\n" +
		"BLOCK:         " + "Arrow away from enemy" + "\n" +
		"CHANGE MODE:   " + KeyToText(global.KeyChangeMode) + "\n"
	);
}
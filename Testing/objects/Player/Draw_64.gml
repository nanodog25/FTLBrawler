draw_set_color(c_white);
draw_text(10,10,
"Open Objects>Player>Create to edit\n\n" +
"UP: " + KeyToText(global.KeyUp) + "\n" +
"DOWN: " + KeyToText(global.KeyDown) + "\n" +
"LEFT: " + KeyToText(global.KeyLeft) + "\n" +
"RIGHT: " + KeyToText(global.KeyRight) + "\n" +
"JUMP: " + KeyToText(global.KeyJump) + "\n" +
"FIRE1: " + KeyToText(global.KeyFire1) + "\n" +
"FIRE2: " + KeyToText(global.KeyFire2) + "\n" +
"PUNCH: " + KeyToText(global.KeyPunch) + "\n" +
"toggle lanes: " + KeyToText(global.KeyGrid) + "\n"
);

draw_text(200,50,
"left/right movement speed: " + string(_speed) + "\n" +
"up/down switch speed: " + string(_switchSpeed) + "\n" +
"max jump height: " + string(_maxJumpHeight) + "\n" +
"jump speed: " + string(_jumpSpeed) + "\n" +
"fall speed: " + string(_fallSpeed) + "\n"
);
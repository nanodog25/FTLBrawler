//ON DRAW
//Set the opacity to 60% and then draw a dark gray oval for the shadow.
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,_currentGroundY-8,x+40,_currentGroundY+8,false);
 
//Draw my own sprite.
draw_set_alpha(1);
draw_self();

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
"toggle lanes: " + KeyToText(global.KeyGrid) + "\n"
);

draw_text(200,50,
"left/right movement speed: " + string(_speed) + "\n" +
"up/down switch speed: " + string(_switchSpeed) + "\n" +
"max jump height: " + string(_maxJumpHeight) + "\n" +
"jump speed: " + string(_jumpSpeed) + "\n" +
"fall speed: " + string(_fallSpeed) + "\n"
);
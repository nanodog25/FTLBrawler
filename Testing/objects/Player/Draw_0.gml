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
"UP: " + string(global.KeyUp) + "\n" +
"DOWN: " + string(global.KeyDown) + "\n" +
"LEFT: " + string(global.KeyLeft) + "\n" +
"RIGHT: " + string(global.KeyRight) + "\n" +
"JUMP: " + string("Spacebar") + "\n" +
"toggle lanes: " + string(global.KeyGrid) + "\n"
);

draw_text(200,50,
"left/right movement speed: " + string(_speed) + "\n" +
"up/down switch speed: " + string(_switchSpeed) + "\n" +
"jump height: " + string(_jumpHeight) + "\n" +
"jump speed: " + string(_jumpSpeed) + "\n" +
"fall speed: " + string(_fallSpeed) + "\n"
);
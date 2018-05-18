var right = false;
var left = false;
var up = false;
var down = false;


if (keyboard_check_pressed(global.KeyMidRight))
	right = true;
else if(keyboard_check_pressed(global.KeyMidLeft))
	left = true;
else if(keyboard_check_pressed(global.KeyHigh))
	up = true;
else if(keyboard_check_pressed(global.KeyLow))
	down = true;
else
	return;
	
var xOffset;
var yOffset;
var lane;
var dir;

if (right)
{
	xOffset = 30;
	yOffset = -40;
	dir = 1;
	lane = _lane;
}
else if (left)
{
	xOffset = 30;
	yOffset = -40;
	dir = -1;
	lane = _lane;
}
else if (up)
{
	xOffset = 0;
	yOffset = -40 - global.LaneWidth;
	dir = 0;
	lane = _lane-1;
}
else if (down)
{
	xOffset = 0;
	yOffset = -40 + global.LaneWidth;
	dir = 0;
	lane = _lane+1;
}


var inst = instance_create_layer(x, y, "Projectiles", obj_punch);
with (inst)
{
	_origin = other;
	_direct = dir;
	_xOffset = xOffset;
	_yOffset = yOffset;
	_lane = lane;
}
/// @arg direction

var dir = argument0;

var laneOffset = dir == "up"
	? -global.LaneWidth
	: global.LaneWidth;

var objName = dir == "up"
	? "LaneObject" + string(_lane-1)
	: "LaneObject" + string(_lane+1);

var xLeft = x - abs(sprite_xoffset);
var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
var yUp = y - sprite_yoffset + laneOffset;
var yDown = y + sprite_height - sprite_yoffset + laneOffset;

var v = collision_rectangle(xLeft, yUp, xRight, yDown, asset_get_index(objName), false, true);
return v;
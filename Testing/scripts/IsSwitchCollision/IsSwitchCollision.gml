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

var v = collision_rectangle(
	xLeft + _collisionBuffer,
	yUp + _collisionBuffer,
	xRight - _collisionBuffer,
	yDown - _collisionBuffer,
	asset_get_index(objName),
	true,
	true);
return v;
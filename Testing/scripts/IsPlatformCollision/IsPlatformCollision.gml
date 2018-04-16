/// @arg direction

var dir = argument0;

var jumpOffset = _jumpHeight;
var switchOffset = _currentGroundY - _targetGroundY;

var xLeft = x - abs(sprite_xoffset);
var xRight = x + abs(sprite_width) - abs(sprite_xoffset);
var yUp = y - sprite_yoffset - jumpOffset - switchOffset;
var yDown = y + sprite_height - sprite_yoffset - jumpOffset - switchOffset;

var obj = asset_get_index("LaneObject" + string(_lane));

switch(dir)
{
	case "up":
		return collision_line(xLeft + _collisionBuffer, yUp, xRight - _collisionBuffer, yUp, obj, true, true);
	case "down":
			return collision_rectangle(xLeft + _collisionBuffer, yUp, xRight - _collisionBuffer, global.LaneYs[| _lane], obj, true, true);
	case "left":
			return xLeft < 0
				? obj_leftBorder
				: collision_line(xLeft, yUp + _collisionBuffer, xLeft, yDown - _collisionBuffer, obj, true, true);
	case "right":
		return xRight > room_width
			? obj_rightBorder
			: collision_line(xRight, yUp + _collisionBuffer, xRight, yDown - _collisionBuffer, obj, true, true);
}
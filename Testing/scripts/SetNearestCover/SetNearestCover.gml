var isPlayerLeft = global.playerX < x;
var nearestDistance = 0;
var nearestObject = noone;

with(LaneObject)
{
	var dist = point_distance(isPlayerLeft ? bbox_right : bbox_left, y, other.x, other.y);
	if (nearestDistance == 0 || dist < nearestDistance)
	{
		nearestDistance = dist;
		nearestObject = self;
	}
}

if (nearestObject != noone)
{
	_moveX = isPlayerLeft
		? nearestObject.bbox_right + abs(sprite_xoffset)
		: nearestObject.bbox_left - (abs(sprite_width) - abs(sprite_xoffset));
	_moveY = nearestObject.y;
	_moveLane = nearestObject._lane;
	return true;
}

return false;
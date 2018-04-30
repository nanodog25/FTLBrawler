//something to set which nearest, put the objects in an array and choose from there
//consider having them move towards the player if nothing else is available
//why won't the collision check for objects work?
//test the collision check for enemies

var isPlayerLeft = global.playerX < x;
var nearestDistance = 0;
var nearestObject = noone;

with(LaneObject)
{
	var targetX = isPlayerLeft ? bbox_right : bbox_left;
	var isOnCorrectSide = isPlayerLeft ? targetX > global.playerX : targetX < global.playerX;
	
	if (isOnCorrectSide && abs(global.playerX - targetX) > 64)
	{
		var dist = point_distance(targetX, y, other.x, other.y);
		if (nearestDistance == 0 || dist < nearestDistance)
		{
			if (!IsCollision(other._lane, _lane, "LaneObject" + string(_lane), false)
				&& !IsCollision(other._lane, _lane, "Enemy", true))
			{
				nearestDistance = dist;
				nearestObject = self;
			}
		}
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
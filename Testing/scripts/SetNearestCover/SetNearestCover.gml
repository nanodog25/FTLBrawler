//consider having them move towards the player if nothing else is available

///@arg coverIndex

var coverIndex = argument0;

var isPlayerLeft = global.playerX < x;
var distances = ds_list_create();
var objs = ds_map_create();

with(LaneObject)
{
	var targetX = isPlayerLeft ? bbox_right : bbox_left;
	var isOnCorrectSide = isPlayerLeft ? targetX > global.playerX : targetX < global.playerX;
	
	if (isOnCorrectSide && abs(global.playerX - targetX) > 64)
	{
		var dist = point_distance(targetX, y, other.x, other.y);
		if (!IsCollision(other, isPlayerLeft ? targetX + abs(other.sprite_xoffset) : targetX - abs(other.sprite_width) + abs(other.sprite_xoffset), y, _lane, "LaneObject" + string(_lane), false)
			&& !IsCollision(other, isPlayerLeft ? targetX + abs(other.sprite_xoffset) : targetX - abs(other.sprite_width) + abs(other.sprite_xoffset), y, _lane, "Enemy", true))
		{
			if (!ds_map_exists(objs, dist))
			{
				ds_list_add(distances, dist);
				ds_map_add(objs, dist, self);
			}
		}
	}
}

var obj = noone;
if (!ds_list_empty(distances))
{
	ds_list_sort(distances, true);
	coverIndex = coverIndex > ds_list_size(distances) - 1 ? ds_list_size(distances) - 1 : coverIndex;
	obj = objs[? distances[| coverIndex]];
	
	_moveX = isPlayerLeft
		? obj.bbox_right + abs(sprite_xoffset)
		: obj.bbox_left - (abs(sprite_width) - abs(sprite_xoffset));
	_moveY = obj.y;
	_moveLane = obj._lane;
}

ds_list_destroy(distances);
ds_map_destroy(objs);
return obj != noone;
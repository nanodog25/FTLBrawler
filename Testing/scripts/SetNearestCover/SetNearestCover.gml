//consider having them move towards the player if nothing else is available

///@arg coverIndex

if (ds_list_empty(global.objectsInView))
	return;

var coverIndex = argument0;

var isPlayerLeft = global.playerX < x;
var distances = ds_list_create();
var objs = ds_map_create();
var bbWidth = bbox_right - bbox_left;

for (var i=0; i<ds_list_size(global.objectsInView); i++)
{
	var obj = global.objectsInView[| i];
	if (!instance_exists(obj))
		continue;
	
	var targetX = isPlayerLeft ? obj.bbox_right : obj.bbox_left;
	var isOnCorrectSide = isPlayerLeft ? targetX > global.playerX : targetX < global.playerX;
	
	if (isOnCorrectSide && abs(global.playerX - targetX) > 64)
	{
		var dist = point_distance(targetX, obj.y, x, y);
		if (!IsCollision(self, isPlayerLeft ? targetX + bbWidth : targetX - bbWidth, obj.y, _lane, "LaneObject" + string(_lane), false)
			&& !IsCollision(self, isPlayerLeft ? targetX + bbWidth : targetX - bbWidth, obj.y, _lane, "Enemy", true))
		{
			if (!ds_map_exists(objs, dist))
			{
				ds_list_add(distances, dist);
				ds_map_add(objs, dist, obj);
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
	
	ai_moveX = isPlayerLeft
		? obj.bbox_right + bbWidth
		: obj.bbox_left - bbWidth;
	ai_moveY = obj.y;
	ai_moveLane = obj._lane;
}

ds_list_destroy(distances);
ds_map_destroy(objs);

if (obj != noone)
{
	_nextState = st_moveToCover;
	ai_coverObj = obj;
}
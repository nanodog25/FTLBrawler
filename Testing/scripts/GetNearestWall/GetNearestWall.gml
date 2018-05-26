///@arg areRightWalls
///@arg bbWidth
///@arg coverIndex

var areRightWalls = argument0;
var bbWidth = areRightWalls ? argument1 : -argument1;
var coverIndex = argument2;

var distances = ds_list_create();
var objs = ds_map_create();

var wallReturn = noone;

for (var i=0; i<5; i++)
{
	var walls = GetWallsInLane(i, areRightWalls)
	
	for(var j=0; j<ds_list_size(walls); j++)
	{
		var wall = walls[| j];
		var goodCover = areRightWalls
			? wall._x > global.playerX + 128
			: wall._x < global.playerX - 128;
		if (instance_exists(wall._obj) && goodCover && GetAdjoiningFloor(wall) != noone)
		{
			var dist = abs(wall._x - x);
			if (!IsCollision(self, wall._x + bbWidth, 0, i, "LaneObject" + string(i), false)
				&& !IsCollision(self, wall._x + bbWidth, 0, i, "Enemy", true))
			{
				if (!ds_map_exists(objs, dist))
				{
					ds_list_add(distances, dist);
					ds_map_add(objs, dist, wall);
				}
			}
		}
	}
}

if (!ds_list_empty(distances))
{
	ds_list_sort(distances, true);
	coverIndex = coverIndex > ds_list_size(distances) - 1 ? ds_list_size(distances) - 1 : coverIndex;
	
	wallReturn = objs[? distances[| coverIndex]];
}

ds_list_destroy(distances);
ds_map_destroy(objs);

return wallReturn;
///@arg paths
///@arg path
///@arg currentX

var paths = argument0;
var path = argument1;
var currentX = argument2;

if (_pathCount == 1)
{
	path = noone;
	return;
}

if (path == noone)
{
	path = ds_list_create();
	var flr = GetCurrentFloor();
	
	if (flr == noone)
		return;
	
	ds_list_add(path, flr);

	if (flr == ai_floor)
	{
		ds_list_add(paths, path);
		return;
	}
}

var currentFloor = path[| ds_list_size(path)-1];
var weights = ds_list_create();
var nextFloorsWeighted = ds_map_create();

GetConnectingFloorsOnThisLane(path, currentFloor, currentX, weights, nextFloorsWeighted);
GetConnectingFloorsOnAdjacentLane(path, currentFloor, currentX, weights, nextFloorsWeighted);

AddPaths(paths, path, currentX, weights, nextFloorsWeighted);
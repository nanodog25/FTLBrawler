///@arg paths
///@arg path

var paths = argument0;
var path = argument1;

if (_pathCount == 5)
{
	path = noone;
	return;
}

var pathCount = _pathCount;

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


var laneFloors = GetConnectingFloorsOnThisLane(path, ai_moveX, true);
AddPaths(paths, path, laneFloors);

if (pathCount == _pathCount)
{
	var adjacentFloors = GetConnectingFloorsOnAdjacentLane(path, ai_moveX, ai_moveLane, true);
	AddPaths(paths, path, adjacentFloors);
}

if (pathCount == _pathCount)
{
	var laneFloorsWrongDirection = GetConnectingFloorsOnThisLane(path, ai_moveX, false);
	AddPaths(paths, path, laneFloorsWrongDirection);
}

if (pathCount == _pathCount)
{
	var adjacentFloorsWrongDirection = GetConnectingFloorsOnAdjacentLane(path, ai_moveX, ai_moveLane, false);
	AddPaths(paths, path, adjacentFloorsWrongDirection);
}
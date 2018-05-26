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
	var floors = GetFloorsInLane(_lane);
	for (var i=0; i<ds_list_size(floors); i++)
	{
		var flr = floors[| i];
		if (flr._xLeft <= x && flr._xRight >= x && flr._y == _targetGroundY)
		{
			ds_list_add(path, flr);
			
			if (flr == ai_floor)
			{
				ds_list_add(paths, path);
				return;
			}
			break;
		}
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
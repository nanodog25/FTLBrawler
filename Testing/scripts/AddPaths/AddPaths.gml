///@arg paths
///@arg path
///@arg nextFloors

var paths = argument0;
var path = argument1;
var nextFloors = argument2;

if (nextFloors == noone)
	return;

for (var i=0; i<ds_list_size(nextFloors); i++)
{
	if (_pathCount == 5)
	{
		path = noone;
		return;
	}
	
	var flr = nextFloors[| i];
	if (flr == ai_floor)
	{
		ds_list_add(path, flr);
		ds_list_add(paths, path);
		_pathCount++;
	}
	else
	{
		var newPath = ds_list_create();
		ds_list_copy(newPath, path);
		ds_list_add(newPath, flr);
		FindPath(paths, newPath);
	}
}
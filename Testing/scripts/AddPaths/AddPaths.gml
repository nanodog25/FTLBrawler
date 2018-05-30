///@arg paths
///@arg path
///@arg currentFloor
///@arg weights
///@arg nextFloorsWeighted

var paths = argument0;
var path = argument1;
var currentX = argument2;
var weights = argument3;
var nextFloorsWeighted = argument4;

ds_list_sort(weights, true);

for (var i=0; i<ds_list_size(weights); i++)
{
	if (_pathCount == 1)
		break;
			
	var weight = weights[| i];
	var flr = nextFloorsWeighted[? weight];
	if (flr == ai_floor)
	{
		ds_list_add(path, flr);
		ds_list_add(paths, path);
		_pathCount++;
	}
	else
	{
		var predictedX = currentX;
		if (flr._xLeft > currentX)
			predictedX = flr._xLeft;
		else if (flr._xRight < currentX)
			predictedX = flr._xRight;
			
		var newPath = ds_list_create();
		ds_list_copy(newPath, path);
		ds_list_add(newPath, flr);
		FindPath(paths, newPath, predictedX);
	}
}

ds_list_destroy(weights);
ds_map_destroy(nextFloorsWeighted);
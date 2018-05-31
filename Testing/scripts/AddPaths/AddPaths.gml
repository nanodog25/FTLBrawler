///@arg paths
///@arg path
///@arg currentX
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
	if (flr == path[| 0])
	{
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
		ds_list_insert(newPath, 1, flr);
		FindPath(paths, newPath, predictedX);
	}
}

ds_list_destroy(weights);
ds_map_destroy(nextFloorsWeighted);
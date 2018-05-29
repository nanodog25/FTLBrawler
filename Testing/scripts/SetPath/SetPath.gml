_pathCount = 0;
_path = noone;
_pathStruct = instance_create_layer(0,0,"Perimeters", PathStruct);
var paths = ds_list_create();
FindPath(paths, noone);

if (!ds_list_empty(paths))
{
	var weights = ds_map_create();
	var totalWeight = 0;
	var selectedPath = 0;
	
	for(var i=0; i<ds_list_size(paths); i++)
	{
		var weight = 100/ds_list_size(paths[| i]);
		ds_map_add(weights, i, weight);
		totalWeight += weight;
	}
	
	var randomWeight = random(totalWeight);
	
	for(var i=0; i<ds_map_size(weights); i++)
	{
		if (randomWeight < weights[? i])
		{
			selectedPath = i;
			break;
		}
		
		randomWeight -= weights[? i];
	}
	
	_path = paths[| selectedPath];
	SetPathStruct();
}
ds_list_destroy(paths);
instance_deactivate_object(_path);
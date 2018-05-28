_pathCount = 0;
_path = noone;
_pathStruct = instance_create_layer(0,0,"Perimeters", PathStruct);
var paths = ds_list_create();
FindPath(paths, noone);

if (!ds_list_empty(paths))
{
	//should be weighted etc
	_path = paths[| irandom(ds_list_size(paths) - 1)];
	SetPathStruct();
}
ds_list_destroy(paths);
instance_deactivate_object(_path);
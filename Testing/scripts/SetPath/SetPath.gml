_pathCount = 0;
_path = noone;
var paths = ds_list_create();
FindPath(paths, noone);

if (!ds_list_empty(paths))
{
	
	
	_path = paths[| irandom(ds_list_size(paths) - 1)];
}
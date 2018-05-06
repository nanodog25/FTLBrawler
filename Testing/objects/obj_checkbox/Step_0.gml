if (!_created)
{
	_created = true;
	_selected = variable_global_get(_variable);
	image_index = _selected ? 1 : 0;
}
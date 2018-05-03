if (!_created)
{
	_created = true;
	
	var varr = variable_global_get(_variable);
	var percent = (varr - _minValue) / (_maxValue - _minValue);

	_value = (percent * (bbox_right - bbox_left)) + bbox_left;

	var inst = instance_create_depth(_value, y + 1, depth - 1, obj_slider);

	with(inst)
	{
		_leftX = other.bbox_left;
		_rightX = other.bbox_right;
		_minValue = other._minValue;
		_maxValue = other._maxValue;
		_variable = other._variable;
	}
}
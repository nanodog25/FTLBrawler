_value = round(((_maxValue - _minValue) / (_rightX - _leftX)) * (x - _leftX));
	
if (_selected)
{
	if (mouse_check_button(mb_left))
		x = clamp(mouse_x, _leftX, _rightX);
	else
	{
		_selected = false;
		variable_global_set(_variable, clamp(_value, _minValue, _maxValue));
	}
}
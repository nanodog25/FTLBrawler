_value = round(((_maxValue - _minValue) / (_xRight - _xLeft)) * (x - _xLeft));
	
if (_selected)
{
	if (mouse_check_button(mb_left))
		x = clamp(mouse_x, _xLeft, _xRight);
	else
	{
		_selected = false;
		variable_global_set(_variable, clamp(_value, _minValue, _maxValue));
	}
}
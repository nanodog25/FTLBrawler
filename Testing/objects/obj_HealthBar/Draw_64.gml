var bar1_end = 42;
var bar2_start = 55;
var bar2_end = 97;
var bar3_start = 110;
var bar3_end = 152;


if (image_index < bar1_end)
{
	image_speed = 0;
	image_index = 126 * (1 - _origin._currentHP / _maxHP);
	if (image_index >= bar1_end)
	{
		_origin._currentHP = (_maxHP/3) * 2;
		image_index = bar1_end;
	}
}
else if (image_index >= bar2_start && image_index < bar2_end)
{
	image_speed = 0;
	image_index = 126 * (1 - _origin._currentHP / _maxHP) + 13;
	if (image_index >= bar2_end)
	{
		_origin._currentHP = _maxHP/3;
		image_index = bar2_end;
	}
}
else if (image_index >= bar3_start && image_index < bar3_end)
{
	image_speed = 0;
	image_index = 126 * (1 - _origin._currentHP / _maxHP) + 26;
	if (image_index >= bar3_end)
	{
		_origin._currentHP = 0;
		image_index = bar3_end;
	}
}
else if (image_index >= bar1_end && image_index < bar2_start)
{
	image_speed = 5;
}
else if (image_index >= bar2_end && image_index < bar3_start)
{
	image_speed = 5;
}
else if (image_index >= bar3_end && image_index < 174)
{
	image_speed = 5;
}
else
{
	image_speed = 0;
	_origin._currentHP = 0;
	_angle++;
	randomize();
	draw_set_color(random(255));
	draw_text_transformed(500,400,"YOR DED", 10, 10, _angle)
}

draw_self();
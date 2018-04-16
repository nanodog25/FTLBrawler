if (collision_line(_xBefore, _yBefore, x, y, Solid, true, true) != noone)
{
	var len = 1;
	var maxLength = abs(x - _xBefore);

	//Begin raycast loop
	while(len < maxLength)
	{
		if (collision_line(_xBefore, _yBefore, _xBefore + len * _direction, _yBefore, Solid, true, true) == noone)
			len++;
		else
			break;
	}
		
	var instList = collision_circle_list(_xBefore + len * _direction, y, sprite_width/2, Solid, true, true);

	if (instList != noone)
	{
		for(var i = 0; i < ds_list_size(instList); i++)
		{
			var inst = instList[| i];
			if (_lane == inst._lane)
			{
				with (inst)
					event_user("onHit");
				_destroySelf = true;
			}
		}
		instList = noone;
		if (_destroySelf)
			instance_destroy();
	}
}
if (!_hasFired)
{
	_xRelease = _origin.x + _direction*_xOffset;
	_yRelease = _origin.y + _yOffset;

	x = _xRelease;
	y = _yRelease;

	var instList = collision_circle_list(x, y, 10, Solid, true, true);

	if (instList != noone)
	{
		for(var i = 0; i < ds_list_size(instList); i++)
		{
			var inst = instList[| i];
			if (_lane == inst._lane && inst != _origin && !object_is_ancestor(inst.object_index, obj_proj_Projectile))
			{
				with (inst)
					event_user(0);
			}
		}
		instList = noone;	
	}
	
	_hasFired = true;
}
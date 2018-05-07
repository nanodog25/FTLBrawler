var instList = collision_circle_list(_colX, _colY, _colRadius, Solid, true, true);

if (instList != noone)
{
	for(var i = 0; i < ds_list_size(instList); i++)
	{
		var inst = instList[| i];
		if (inst != _origin && _lane == inst._lane)
		{
			with (inst)
			{
				event_user("onHit");
			}
			if !(_isIgnoringCover || _isPiercing && inst._isDestructible)
				_destroySelf = true;
		}
	}
	instList = noone;	
}
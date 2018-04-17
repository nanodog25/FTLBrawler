_direction = -_origin.image_xscale;
_xRelease = _origin.x + _direction*_xOffset;
_yRelease = _origin.y + _yOffset;
_lane = _origin._lane;

x = _xRelease;
y = _yRelease;

var instList = collision_circle_list(x, y, 10, Solid, true, true);

if (instList != noone)
{
	for(var i = 0; i < ds_list_size(instList); i++)
	{
		var inst = instList[| i];
		if (_lane == inst._lane && inst != _origin)
		{
			with (inst)
				event_user("onHit");
		}
	}
	instList = noone;	
}
instance_destroy();
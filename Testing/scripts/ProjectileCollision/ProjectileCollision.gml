var instList = collision_circle_list(_colX, _colY, _colRadius, Solid, true, true);

if (instList != noone)
{
	for(var i = 0; i < ds_list_size(instList); i++)
	{
		var inst = instList[| i];
		
		if (inst.object_index == obj_punch && _lane == inst._lane)
		{
			if (_speedMod < 1 || IsAbilityActive(global.AbilityKevlarGloves))
			{
				_origin = inst;
				_direction = -_direction;
				image_xscale = _direction;
				_yRelease = _colY;
				_xRelease = _colX;
				_travelSpeed *= 2;
				_isPiercing = true;
				var returned = instance_create_layer(x, y, "Projectiles", object_index);
				with(returned)
				{
					_origin = inst._origin;
					_hasOrigin = false;
					_yOffset = 0;
					_xOffset = 0;
					_direction = other._direction;
					_travelSpeed = other._travelSpeed*2;
					_isPiercing = true;
					_lane = other._lane;
				}
				instance_destroy();
				instance_destroy(inst);
				return;
			}
		}
	}
	
	for(var i = 0; i < ds_list_size(instList); i++)
	{
		var inst = instList[| i];
		var isProjectile = object_is_ancestor(inst.object_index, obj_proj_Projectile);
		var instIgnoresUs = isProjectile && inst._isPiercing;
		
		if (inst != _origin && inst != other && !instIgnoresUs && _lane == inst._lane)
		{
			with (inst)
			{
				event_user(0);
			}
			if !_isIgnoringCover && !_isPiercing && !inst._isDestructible
				_destroySelf = true;
		}
	}
	instList = noone;	
}
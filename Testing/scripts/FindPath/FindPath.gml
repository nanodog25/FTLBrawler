//1. look at the area between position and target,
//highlight obstacles (anything taller than jump height that can't be jumped from somewhere lower)

//2. from target, create arrays to get there,
//comprised of lane switches and correct x movements, that converge on the position,
//while avoiding the obstacles

var path = ds_list_create();

if (GetRelativeHeight(ai_moveY, ai_moveLane) > _jumpHeight)
{
	for(var i=0; i < ds_list_size(global.objectsInView); i++)
	{
		var obj = global.objectsInView[| i];
		if (!instance_exists(obj))
			continue;
	}
}
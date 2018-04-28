for (var i = 0; i < 5; i++)
{
	var obj = instance_create_layer(600, global.LaneYs[| i], "Actors", obj_enemy_static);
	with(obj)
	{
		_lane = i;
		image_xscale = -1;
	}
}

var obj = instance_create_layer(300, global.LaneYs[| 0], "Pickups", obj_gun_rockets);
with(obj)
{
	_lane = 0;
}

var obj = instance_create_layer(300, global.LaneYs[| 2], "Pickups", obj_gun_laser);
with(obj)
{
	_lane = 2;
}

var obj = instance_create_layer(200, global.LaneYs[| 0], "Actors", Player);
with(obj)
{
	_lane = 0;
}
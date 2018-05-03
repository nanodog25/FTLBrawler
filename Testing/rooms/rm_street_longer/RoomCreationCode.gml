
var obj = instance_create_layer(600, global.LaneYs[| 1], "Actors", obj_enemy_retreat);
with(obj)
{
	_lane = 1;
	image_xscale = -1;
}


var obj = instance_create_layer(200, global.LaneYs[| 0], "Actors", Player);
with(obj)
{
	_lane = 0;
}
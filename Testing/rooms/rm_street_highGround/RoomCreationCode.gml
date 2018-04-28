
var obj = instance_create_layer(600, global.LaneYs[| 0], "Actors", obj_enemy_highGround);
with(obj)
{
	_lane = 0;
	image_xscale = -1;
}


var obj = instance_create_layer(200, global.LaneYs[| 0], "Actors", Player);
with(obj)
{
	_lane = 0;
}
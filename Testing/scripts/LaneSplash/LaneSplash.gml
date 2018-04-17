var inst = instance_create_layer(_colX, _colY, "Projectiles", object_index);
with (inst)
{
	_hasOrigin = false;
	_isVertical = true;
	_laneCrossing = false;
	_travelDistance = global.LaneWidth;
	_travelSpeed = 5;
	_lane = other._lane + 1;
	_direction = 1;
}

inst = instance_create_layer(_colX, _colY, "Projectiles", object_index);
with (inst)
{
	_hasOrigin = false;
	_isVertical = true;
	_laneCrossing = false;
	_travelDistance = global.LaneWidth;
	_travelSpeed = 5;
	_lane = other._lane - 1;
	_direction = -1;
}
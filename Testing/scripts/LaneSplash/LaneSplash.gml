var inst = instance_create_layer(_colX, _colY, "Projectiles", object_index);
with (inst)
{
	_hasOrigin = false;
	_origin = other._origin;
	_isVertical = true;
	_laneCrossing = false;
	_travelDistance = global.LaneWidth;
	_travelSpeed = 5;
	_isUp = true;
}

inst = instance_create_layer(_colX, _colY, "Projectiles", object_index);
with (inst)
{
	_hasOrigin = false;
	_origin = other._origin;
	_isVertical = true;
	_laneCrossing = false;
	_travelDistance = global.LaneWidth;
	_travelSpeed = 5;
}
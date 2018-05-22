var inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, Enemy, true, true);
if (inst != noone && inst._lane == _lane && inst.y == inst._currentGroundY)
{
	inst._moveUp = true;
}

var inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, Player, true, true);
if (inst != noone && inst._lane == _lane && inst.y == inst._currentGroundY)
{
	inst._moveUp = true;
}
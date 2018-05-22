var inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, Enemy, true, true);
if (inst != noone && inst.y == inst._currentGroundY)
{
	inst._nextState = "stunned";
	inst._stunDuration = _duration;
}
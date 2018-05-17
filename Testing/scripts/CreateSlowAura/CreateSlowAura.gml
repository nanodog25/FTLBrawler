var inst = instance_create_depth(_colX, _colY, DepthModifier(_lane, "Overlay"), obj_effect_slowAura);

with (inst)
{
	_lane = other._lane;
}
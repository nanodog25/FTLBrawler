///@arg multiplier

var multipler = argument0;

var inst = instance_create_depth(_colX, _colY, DepthModifier(_lane, "Overlay"), obj_effect_speedAura);

with (inst)
{
	_lane = other._lane;
	_multiplier = multipler;
}
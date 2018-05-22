///@arg duration

var duration = argument0;

var inst = instance_create_depth(_colX, _colY, DepthModifier(_lane, "Overlay"), obj_effect_stunTrap);

with (inst)
{
	_lane = other._lane;
	_duration = duration;
}
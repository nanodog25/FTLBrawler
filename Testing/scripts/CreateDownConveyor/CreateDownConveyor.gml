///@arg damage

var damage = argument0;

var inst = instance_create_depth(_colX, _colY, DepthModifier(_lane, "Overlay"), obj_effect_downConveyor);

with (inst)
{
	_lane = other._lane;
	_damage = damage;
}
///@arg triggerObj
///@arg formation

var inst = instance_create_layer(0,0,"Triggers",obj_trigger_formation);

with(inst)
{
	_triggerObj = argument0;
	_enemyFormations = argument1;
}
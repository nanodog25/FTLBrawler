///@arg 0_left
///@arg 0_right
///@arg 1_left
///@arg 1_right
///@arg 2_left
///@arg 2_right
///@arg 3_left
///@arg 3_right
///@arg 4_left
///@arg 4_right
///@arg obj

var inst = instance_create_layer(0,0,"Triggers",obj_trigger_zone);

with(inst)
{
	trig_left0 = argument0;
	trig_right0 = argument1;
	trig_left1 = argument2;
	trig_right1 = argument3;
	trig_left2 = argument4;
	trig_right2 = argument5;
	trig_left3 = argument6;
	trig_right3 = argument7;
	trig_left4 = argument8;
	trig_right4 = argument9;
	_obj = argument10;
}

return inst;
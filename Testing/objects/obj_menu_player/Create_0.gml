var _x = 200;
var _y = 30;
var space = 20;
var i = 0;

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "playerSpeed";
	_lable = "left/right speed:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "playerSwitchSpeed";
	_lable = "switch speed:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "playerMaxJumpHeight";
	_lable = "jump height:";
	_maxValue = 300;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "playerJumpSpeed";
	_lable = "jump speed:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "playerFallSpeed";
	_lable = "fall speed:";
	_maxValue = 50;
	_minValue = 0;
}
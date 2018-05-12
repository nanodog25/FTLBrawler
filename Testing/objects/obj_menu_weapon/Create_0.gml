_x = 200;
_y = 300;
var space = 20;
var i = 0;

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "damage";
	_lable = "damage:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "rateOfFire";
	_lable = "rateOfFire:";
	_maxValue = 50;
	_minValue = 1;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "buildUpDuration";
	_lable = "buildUpDuration:";
	_maxValue = 5;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "travelSpeed";
	_lable = "travelSpeed:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "travelDistance";
	_lable = "travelDistance:";
	_maxValue = 1100;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "knockBack";
	_lable = "knockBack:";
	_maxValue = 200;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "stunLength";
	_lable = "stunLength:";
	_maxValue = 5;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "laneCrossing";
	_lable = "laneCrossing:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isVertical";
	_lable = "isVertical:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isIgnoringCover";
	_lable = "isIgnoringCover:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isPiercing";
	_lable = "isPiercing:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isDestructible";
	_lable = "isDestructible:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isUp";
	_lable = "isUp:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isLauncher";
	_lable = "isLauncher:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "canDetonate";
	_lable = "canDetonate:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isLob";
	_lable = "isLob:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "hasSlowAura";
	_lable = "hasSlowAura:";
}
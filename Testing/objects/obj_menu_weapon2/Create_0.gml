_x = 600;
_y = 300;
var space = 20;
var i = 0;

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "damage2";
	_lable = "damage:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "rateOfFire2";
	_lable = "rateOfFire:";
	_maxValue = 50;
	_minValue = 1;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "buildUpDuration2";
	_lable = "buildUpDuration:";
	_maxValue = 5;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "travelSpeed2";
	_lable = "travelSpeed:";
	_maxValue = 50;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "travelDistance2";
	_lable = "travelDistance:";
	_maxValue = 1100;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "knockBack2";
	_lable = "knockBack:";
	_maxValue = 200;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_sliderBar);
with (inst)
{
	_variable = "stunLength2";
	_lable = "stunLength:";
	_maxValue = 5;
	_minValue = 0;
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "laneCrossing2";
	_lable = "laneCrossing:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isVertical2";
	_lable = "isVertical:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isIgnoringCover2";
	_lable = "isIgnoringCover:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isPiercing2";
	_lable = "isPiercing:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isDestructible2";
	_lable = "isDestructible:";
}
	
var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isUp2";
	_lable = "isUp:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isLauncher2";
	_lable = "isLauncher:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "canDetonate2";
	_lable = "canDetonate:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "isLob2";
	_lable = "isLob:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "hasSlowAura2";
	_lable = "hasSlowAura:";
}

var inst = instance_create_depth(_x, _y + space * i++, -10000, obj_checkbox);
with (inst)
{
	_variable = "hasSpeedAura2";
	_lable = "hasSpeedAura:";
}
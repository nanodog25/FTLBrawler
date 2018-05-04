Debug();

if (!_created && instance_exists(Player))
{
	_created = true;
	var inst = instance_create_depth(460, 60, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(460, 80, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerSwitchSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(460, 100, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerMaxJumpHeight";
		_maxValue = 300;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(460, 120, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerJumpSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(460, 140, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerFallSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 40, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "damage";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 60, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "rateOfFire";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 80, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "buildUpDuration";
		_maxValue = 5;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 100, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "travelSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 120, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "travelDistance";
		_maxValue = 1100;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 140, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "knockBack";
		_maxValue = 200;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(730, 160, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "stunLength";
		_maxValue = 5;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(1000, 35, -10000, obj_checkbox);
	with (inst)
	{
		_variable = "laneCrossing";
	}
	
	var inst = instance_create_depth(1000, 55, -10000, obj_checkbox);
	with (inst)
	{
		_variable = "isVertical";
	}
	
	var inst = instance_create_depth(1000, 75, -10000, obj_checkbox);
	with (inst)
	{
		_variable = "isIgnoringCover";
	}
	
	var inst = instance_create_depth(1000, 95, -10000, obj_checkbox);
	with (inst)
	{
		_variable = "isPiercing";
	}
	
	var inst = instance_create_depth(1000, 115, -10000, obj_checkbox);
	with (inst)
	{
		_variable = "isDestructible";
	}
	
	var inst = instance_create_depth(1000, 135, -10000, obj_checkbox);
	with (inst)
	{
		_variable = "isUp";
	}
}
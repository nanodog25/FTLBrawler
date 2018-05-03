Debug();

if (!_created && instance_exists(Player))
{
	_created = true;
	var inst = instance_create_depth(800, 60, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(800, 80, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerSwitchSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(800, 100, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerMaxJumpHeight";
		_maxValue = 300;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(800, 120, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerJumpSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
	
	var inst = instance_create_depth(800, 140, -10000, obj_sliderBar);
	with (inst)
	{
		_variable = "playerFallSpeed";
		_maxValue = 50;
		_minValue = 0;
	}
}
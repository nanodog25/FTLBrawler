if (_state = "grow")
{
	if (image_xscale < 10)
	{
		image_xscale += 0.2;
		image_yscale = image_xscale;
	}
	else
	{
		alarm_set(0, InSeconds(10));
		_state = "hold";
	}
}
else if (_state == "shrink")
{
	if (image_xscale > 0)
	{
		image_xscale -= 0.2;
		image_yscale = image_xscale;
	}
	else
	{
		instance_destroy();
	}
}
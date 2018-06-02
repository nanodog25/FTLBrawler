if (!_hasCreated && !_isCopy)
{
	depth = DepthModifier(_lane, "Platform");
	var spriteLeft = x - sprite_xoffset;
	if (spriteLeft + sprite_width > bbox_right)
	{
		var inst = instance_create_layer(x, y, "Copies", object_index);
		inst._isCopy = true;
		inst.copy_left = bbox_left - (x - sprite_xoffset) + 5;
		inst.copy_top = bbox_top - (y - sprite_yoffset) + 10;
		inst.copy_x = bbox_left + 5;
		inst.copy_y = bbox_top + 10;
		inst.image_xscale = image_xscale;
		inst.image_yscale = image_yscale;
	}
	_hasCreated = true;
}
else if (!_hasCreated && _isCopy)
{
	depth = DepthModifier(_lane, "FrontPlatform");
	_hasCreated = true;
}

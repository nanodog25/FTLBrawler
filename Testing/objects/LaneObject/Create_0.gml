_isHit = false;
_isDestructible = false;
_copy = noone;
_isCopy = false;
_lane = int64(string_char_at(object_get_name(object_get_parent(object_index)), 11));

if (layer != layer_get_id("Copies"))
{
	depth = DepthModifier(_lane, "Platform") - global.InstanceOrder;
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
	global.InstanceOrder++;
}
else
{
	depth = DepthModifier(_lane, "FrontPlatform") - global.InstanceOrder;
}
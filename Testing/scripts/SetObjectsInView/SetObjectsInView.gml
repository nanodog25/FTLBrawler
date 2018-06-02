ds_list_clear(global.objectsInView);

with (LaneObject)
{
	if (!_isCopy && bbox_left > global.roomLeft && bbox_right < global.roomRight)
		ds_list_add(global.objectsInView, self);
}
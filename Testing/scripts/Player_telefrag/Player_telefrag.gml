var enemies = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, Enemy, true, false, noone);
if (enemies != noone)
{
	var takeHit = false;
	for(var i = 0; i < ds_list_size(enemies); i++)
	{
		var enemy = enemies[| i];
		if (_lane == enemy._lane)
		{
			instance_destroy(enemy);
			takeHit = true;
		}
	}
	if (takeHit)
		Hit(0, 1000, 0);
	enemies = noone;
}
//event_inherited();
//draw_set_alpha(.6);
//draw_set_color(c_dkgray);
//draw_rectangle(bbox_left,global.LaneYs[| _lane] -8,bbox_right,global.LaneYs[| _lane] +8,false);
//draw_set_alpha(1);

if (!_isCopy)
{
	var a = _lane == global.playerLane ? 1 : 0.2;
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, a);
}
else if (_lane == global.playerLane)
	draw_sprite_part(sprite_index, 0, copy_left, copy_top, sprite_width, sprite_height, copy_x, copy_y);